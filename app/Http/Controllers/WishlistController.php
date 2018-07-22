<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Cart;

class WishlistController extends Controller
{

    public function index() {
        return view('wishlist');
    }
    
    public function store(Request $request)
    {
        $cart = Cart::instance('wishlist')->search(function ($cartItem, $rowId) use($request) {
            return $cartItem->id === $request->id;
        });

        if($cart->isNotEmpty()) {
            return 'not';
        } else {
            Cart::instance('wishlist')->add($request->id, $request->name, 1, $request->price)->associate('App\Product');
            return 'yes';
        }
    }

    
    public function destroy(Request $request) {
        Cart::instance('wishlist')->remove($request->id);
        return view('wish_products')->with('status', 'Товар з вподобаних видалений!')->render();
    }


    public function cart($id) {  
        $item = Cart::instance('wishlist')->get($id);

        Cart::instance('wishlist')->remove($id);

        $wishlist = Cart::instance('default')->search(function ($cartItem, $rowId) use($id) {
            return $rowId === $id;
        });

        if($wishlist->isNotEmpty()) {
            return redirect()->route('wishlist.index')->with('status', 'Даний товар вже доданий до корзіни');
        }

        Cart::instance('default')->add($item->id, $item->name, 1, $item->price)->associate('App\Product');
        return redirect()->route('wishlist.index')->with('status', 'Товар доданий до корзіни');
    }
}
