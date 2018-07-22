@extends('layouts.layout')
  
  @section('extra-css')
    <link rel="stylesheet" type="text/css" href="{{ asset('css/algolia.css') }}" />
  @endsection

  @section('content')
  <div class="shop-cart" id="page">
    @include('menu_phone')
    <header class="header-style-1 static">
      {{ menu('main', 'menus.main') }}
    </header>
      <section class="sub-header shop-detail-1">
        <img class="rellax bg-overlay" src="images/sub-header/013.jpg" alt="">
        <div class="overlay-call-to-action"></div>
        <h3 class="heading-style-3">Shop Cart</h3>
      </section>
      <section class="boxed-sm">
        <div class="container">
          <div id="cart-product" class="woocommerce">
            @include('cart_product')
          </div>
        </div>
      </section>
    </div>
  @endsection

  @section('extra-js')
  <script src="{{ asset('js/demo-cart.js') }}"></script>
  @endsection