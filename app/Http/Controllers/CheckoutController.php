<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Cartalyst\Stripe\Exception\CardErrorException;
use App\Http\Requests\CheckoutRequest;
use App\OrderProduct;
use App\Order;
use Cart;
use Mail;
use Stripe;
use App\Mail\OrderPlaced;

class CheckoutController extends Controller
{

    public function index() {

        // if(auth()->user() && request()->is('guestCheckout')) {
        //     return redirect()->route('checkout.index');
        // }

        return view('checkout')->with([
            'discount' => $this->getNumbers()->get('discount'),
            'shipping' => $this->getNumbers()->get('shipping'),
            'total' => $this->getNumbers()->get('total')
        ]);
    }

    
    public function store(CheckoutRequest $request) {   

        $contents = Cart::content()->map(function ($item) {
            return $item->model->slug.', '.$item->qty;
        })->values()->toJson();

        try {
            $charge = Stripe::charges()->create([
                'amount' => $this->getNumbers()->get('total'),
                'currency' => 'USD',
                'source' => $request->stripeToken,
                'description' => 'Order',
                'receipt_email' => $request->email,
                'metadata' => [
                    'contents' => $contents,
                    'quantity' => Cart::instance('default')->count(),
                    'discount' => collect(session()->get('coupon'))->toJson(),
                ],
            ]);

            $order = $this->addToOrdersTables($request, null);
            Mail::send(new OrderPlaced($order));

            Cart::instance('default')->destroy();
            session()->forget('coupon');

            return redirect()->route('thankyou.index')->with('success', 'Заказ удачно оформлено!');
        } catch (CardErrorException $e) {
            $this->addToOrdersTables($request, $e->getMessage());
            return back()->withErrors('Error! ' . $e->getMessage());
        }
    }

    public function addToOrdersTables($request, $error) {

        // Insert into order table
        $order = Order::create([
            'user_id' => auth()->user() ? auth()->user()->id : null,
            'billing_email' => $request->email,
            'billing_name' => $request->first_name,
            'billing_address' => $request->address,
            'billing_city' => $request->city,
            'billing_phone' => $request->phone,
            'billing_discount' => ($this->getNumbers()->get('discount') * 100 ),
            'billing_discount_code' => $this->getNumbers()->get('code'),
            'billing_subtotal' => ($this->getNumbers()->get('newSubtotal') * 100 ),
            'billing_tax' => ($this->getNumbers()->get('shipping') * 100 ),
            'billing_total' => ($this->getNumbers()->get('total') * 100 ),
            'error' => $error
        ]);

        // Insert into order_product table
        foreach (Cart::content() as $item) {
            OrderProduct::create([
                'order_id' => $order->id,
                'product_id' => $item->model->id,
                'quantity' => $item->qty
            ]);
        }

        return $order;
    }


    public function getNumbers() {
        $tax = config('cart.tax') / 100;
        $discount = session()->get('coupon')['discount'] ?? 0;
        $code = session()->get('coupon')['name'] ?? null;
        $newSubtotal = (Cart::subtotal() - $discount);
        $shipping = 2 + round(Cart::subtotal() * $tax, 2);
        if($newSubtotal < 0) {
            $newSubtotal = 0;
        }
        $total = ($shipping + $newSubtotal);

        return collect([
            'discount' => $discount,
            'shipping' => $shipping,
            'code' => $code,
            'newSubtotal' => $newSubtotal,
            'total' => $total
        ]);
    }
}
