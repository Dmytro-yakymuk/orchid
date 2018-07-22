<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Coupon;
use Cart;


class CouponsController extends Controller
{
    
    public function store(Request $request)
    {
        $coupon = Coupon::where('code', $request->coupon_code)->first();

        if(!$coupon) {
            $discount = session()->get('coupon')['discount'];
            $newSubtotal = (Cart::subtotal() - $discount);
            if($newSubtotal < 0) {
                $newSubtotal = 0;
            }

            return view('cart_product')->with([
                'discount' => $discount,
                'newSubtotal' => $newSubtotal,
                'status' => 'Купон дійсний'
            ])->withErrors('Купон не дійсний')->render();
        }

        session()->put('coupon', [
            'name' => $coupon->code,
            'discount' => round($coupon->discount(Cart::subtotal()), 2)
        ]);

        $discount = session()->get('coupon')['discount'];
        $newSubtotal = (Cart::subtotal() - $discount);
        if($newSubtotal < 0) {
            $newSubtotal = 0;
        }

        return view('cart_product')->with([
            'discount' => $discount,
            'newSubtotal' => $newSubtotal,
            'status' => 'Купон дійсний'
        ])->render();
        
    }

    
    public function destroy()
    {
        session()->forget('coupon');

        $discount = session()->get('coupon')['discount'];
        $newSubtotal = (Cart::subtotal() - $discount);
        if($newSubtotal < 0) {
            $newSubtotal = 0;
        }

        return view('cart_product')->with([
            'discount' => $discount,
            'newSubtotal' => $newSubtotal,
            'status' => 'Купон видалено!'
        ])->render();
    }
}
