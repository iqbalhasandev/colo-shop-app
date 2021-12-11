<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class ProductController extends Controller
{
    public function index()
    {
        $cart = [];
        if (Session::has('cart')) {
            $cart = Session::get('cart');
        }

        $products = Product::all();
        return \view('index')->with('products', $products)->with('cart', $cart);
    }

    public function show(Product $product)
    {
        $cart = [];
        if (Session::has('cart')) {
            $cart = Session::get('cart');
        }

        return \view('show')->with('product', $product)->with('cart', $cart);
    }
}
