<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Coupon;
use Cart;

class CartController extends Controller
{

    public function index()
    {   
        $discount = session()->get('coupon')['discount'];
        $newSubtotal = (Cart::subtotal() - $discount);
        if($newSubtotal < 0) {
            $newSubtotal = 0;
        }

        return view('cart')->with([
            'discount' => $discount,
            'newSubtotal' => $newSubtotal
        ]);
    }

    
    // $cart = Cart::search(function ($cartItem, $rowId) use($request) {
    //     return $cartItem->id === $request->id;
    // });

    // if($cart->isNotEmpty()) {
    //     return back()->with('status', 'Product has in cart!');
    // } 

    //return back()->with('status', 'Product add to cart!');

              
    public function destroy(Request $request)
    {   
        $discount = session()->get('coupon')['discount'];
        $newSubtotal = (Cart::subtotal() - $discount);
        if($newSubtotal < 0) {
            $newSubtotal = 0;
        }

        Cart::remove($request->id);
        session()->put('count', (session('count') - 1));

        return view('cart_product')->with([
            'discount' => $discount,
            'newSubtotal' => $newSubtotal
        ])->render();
        
    }

    public function count(Request $request) { 
        //session()->forget('count');

        $cart = Cart::search(function ($cartItem, $rowId) use($request) {
            return $cartItem->id === $request->id;
        });

        if($cart->isNotEmpty()) {
            return 'not';
        } else {
            Cart::add($request->id, $request->name, 1, $request->price)->associate('App\Product');
            session()->put('count', (session('count') + 1));
            return 'yes';
        }

        //session()->forget('count');
    }

    public function like($id) {   
        //dd($id);
        $item = Cart::get($id);

        Cart::remove($id);

        $cart = Cart::instance('like')->search(function ($cartItem, $rowId) use($id) {
            return $rowId === $id;
        });

        if($cart->isNotEmpty()) {
            return redirect()->route('cart.index')->with('status', 'Даний товар вже доданий до вподобаних');
        }
        

        Cart::instance('like')->add( $item->id, $item->name, 1, $item->price)->associate('App\Shop');
        return redirect()->route('cart.index')->with('status', 'Товар доданий до вподобаних');
    }
}
