<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $cart = [];
        if (Session::has('cart')) {
            $cart = Session::get('cart');
        }
        return  \view('cart')->with('cart', $cart);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function order()
    {
        Session::forget('cart');
        Session::flash('success', 'Successfully Order Completed');
        return \redirect()->back();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $products = [];
        if (Session::has('cart'))  $products = Session::get('cart');

        if (!in_array($request->cart, $products)) array_push($products, $request->cart);

        Session::put('cart', $products);
        return \redirect()->back();
    }



    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        if ($request->forgetall) {
            Session::forget('cart');
        }
        $products = [];
        if (Session::has('cart')) {
            $products = Session::get('cart');
        }
        if (array_search($request->cart, $products) >= 0) unset($products[array_search($request->cart, $products)]);
        Session::put('cart', $products);
        return \redirect()->back();
    }
}
