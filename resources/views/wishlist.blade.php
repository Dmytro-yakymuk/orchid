@extends('layouts.layout')
  @section('content')
  <div class="wish-list" id="page">
    @include('menu_phone')
      <header class="header-style-1 static">
        {{ menu('main', 'menus.main') }}
      </header>
      <section class="sub-header shop-detail-1">
        <img class="rellax bg-overlay" src="images/sub-header/014.jpg" alt="">
        <div class="overlay-call-to-action"></div>
        <h3 class="heading-style-3">Wishlist</h3>
      </section>
      <section class="boxed-sm">
        <div class="container">
          <div class="woocommerce">
            @include('wish_products')
          </div>
        </div>
      </section>
    </div>
  @endsection

  @section('extra-js')
    <script src="{{ asset('js/demo-wish.js') }}"></script>
  @endsection