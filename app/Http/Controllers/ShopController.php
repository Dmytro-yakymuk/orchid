<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Category;
use View;

class ShopController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){ 
        $categories = Category::all();
        $cat_name = 'Shop';

        $products = Product::where('status', 1)->paginate(9);

        session()->forget('category');
        session()->forget('sort');

        return view('shop')->with([
            'products' => $products,
            'categories' => $categories,
            'cat_name' => $cat_name
        ]);
    }

    
    public function show($slug){
        $products = Product::where('slug', '!=', $slug)->inRandomOrder()->take(10)->get();
        $product = Product::where('slug', $slug)->firstOrFail();
        return view('product')->with(['product' => $product, 'products' => $products]);
    }
   
    public function search(Request $request) {
        $request->validate([
            'query' => 'required|min:3'
        ]);

        $query = $request->input('query');
        $products = Product::search($query)->paginate(16);
        return view('search-result')->with('products', $products);
    }

    public function searchAlgolia(Request $request) {
        return view('search-result-algolia');
    }

    public function filter(Request $request) {
        
        if($request->category) {
            session()->put('category', $request->category);
        }
        if($request->sort) {
            session()->put('sort', $request->sort);
        }
        
        if(session('category')) {
            $products = Product::with('categories')->whereHas('categories', function($query) {
                $query->where('slug', session('category'));
            });
            $cat_name = optional(Category::where('slug', request()->category)->first())->name;   
        } else {
            $products = Product::where('status', 1);
        }

        if(session('sort')) {
            if(session('sort') == 'low_to_high') {
                $products = $products->orderBy('price')->paginate(9);
            } elseif(session('sort') == 'high_to_low') {
                $products = $products->orderBy('price', 'desc')->paginate(9);
            }
        } else {
            $products = $products->paginate(9);
        }

        return view('products')->with([
            'products' => $products
        ])->render();
    }   
}
