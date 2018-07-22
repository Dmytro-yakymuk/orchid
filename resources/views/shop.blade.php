@extends('layouts.layout')

  @section('extra-css')
    <link rel="stylesheet" type="text/css" href="{{ asset('css/algolia.css') }}" />
  @endsection
  
  @section('content')
	<div class="shop-layout-3" id="page">
		@include('menu_phone')
		<header class="header-style-1 static">
	    {{ menu('main', 'menus.main') }}
    </header>
	  <section class="sub-header shop-layout-1">
      <img class="rellax bg-overlay" src="images/sub-header/01.jpg" alt="">
      <div class="overlay-call-to-action"></div>
      <h3 class="heading-style-3">{{ $cat_name }}</h3>
    </section>
    <section class="boxed-sm">
      <div class="container">
        <div class="row">
          <div class="row main">
            <div class="col-md-3">
              <div class="sidebar">

                <!-- <div class="widget widget-filter-price">
                  <h4 class="title-widget text-center">Filter by price</h4>
                    <input type="hidden" id="token" name="_token" value="{{ csrf_token() }}">
                    <input class="js-filter-price" id="dollar" type="text" data-slider-min="5" data-slider-max="200" data-slider-step="1" data-slider-value="100">
                    <div class="filter-price-control-box">
                      <button type="submit" id="priceButton" class="btn btn-brand btn-filter">FILTER</button>
                      <p>Price:
                        <span>$</span>
                        <span>1 - </span>
                        <span id="js-filter-result-val">100</span>
                        <span>$</span>
                      </p>
                    </div>
                </div> -->
                
                <div class="widget widget-categories">
                  <h4 class="title-widget text-center">Categories</h4>
                  <ul id="shop-category">
                    @forelse($categories as $category)
                    <li>
                      <!-- setActiveClass в helpes.php -->
                      <a class="" href="{{ route('shop', ['category' => $category->slug]) }}">{{ $category->name }}
                        <span >({{ count($category->products) }})</span>
                      </a>
                    </li>
                    @empty

                    @endforelse
                    
                  </ul>
                </div>

                <div class="widget widget-product-bestseller">
                  <h4 class="title-widget text-center">Bestseller</h4>
                  <ul class="list-product">
                    <li>
                      <a href="product-detail.html">
                        <div class="img-wrapper">
                          <img src="images/product/widget-product-01.jpg" alt="product">
                        </div>
                        <div class="desc">
                          <h5 class="title">Apple</h5>
                          <p class="price">$4.05</p>
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="product-detail.html">
                        <div class="img-wrapper">
                          <img src="images/product/widget-product-02.jpg" alt="product">
                        </div>
                        <div class="desc">
                          <h5 class="title">Basil</h5>
                          <p class="price">$1.55</p>
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="product-detail.html">
                        <div class="img-wrapper">
                          <img src="images/product/widget-product-03.jpg" alt="product">
                        </div>
                        <div class="desc">
                          <h5 class="title">Raspberry</h5>
                          <p class="price">$2.26</p>
                        </div>
                      </a>
                    </li>
                  </ul>
                </div>
                <div class="widget widget-tags">
                  <h4 class="title text-center">Search Tags</h4>
                  <ul>
                    <li>
                      <a href="shop.html">Vegatables</a>
                    </li>
                    <li>
                      <a href="shop.html">Natural</a>
                    </li>
                    <li>
                      <a href="shop.html">Egg</a>
                    </li>
                    <li>
                      <a href="shop.html">Life</a>
                    </li>
                    <li>
                      <a href="shop.html">Meat</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>

            <div class="col-md-9">
              
              <div class="woocommerce-top-control wrapper">
                <div class="woocommerce-top-control">
                  <p class="woocommerce-result-count">Showing 1 - 12 of 30 results</p>
                    <div class="sort">
                      <strong> Price: </strong>
                      <a href="{{ route('shop', ['category' => request()->category, 'sort' => 'low_to_high' ]) }}" >low to high | </a>
                      <a href="{{ route('shop', ['category' => request()->category, 'sort' => 'high_to_low' ]) }}" >high to low</a>
                    </div> 
                </div>
              </div>

              <div id="figure" class="row product-grid-equal-height-wrapper product-equal-height-3-columns flex multi-row">
                @include('products')
              </div>

            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  @endsection

  @section('extra-js')
  <script>
  $(document).ready(function () {

    $(document).on('click', '.sort a', function (e) {
      e.preventDefault();
      var sort = $(this).attr('href').split('sort=')[1];
      getSort(sort);
    });

    function getSort(sort) {
      $.ajax({
        url: "{{ route('filter') }}",
        data: {sort:sort},
      }).done( function(result) {
        $('#figure').html(result);
      });
    };



    $(document).on('click', '.pagination a', function (e) {
      e.preventDefault();
      var page = $(this).attr('href').split('page=')[1];
      getProducts(page);
    });

    function getProducts(page) {
      $.ajax({
        url: 'pagination?page='+page,
      }).done( function(data) {
        $('#figure').html(data);
        //location.hash=page;
      });
    };



    $(document).on('click', '.widget-categories a', function (e) {
      e.preventDefault();
      var category = $(this).attr('href').split('category=')[1];
      
      $('.widget-categories a').removeClass('active');
      if($(this).attr('href').split('category=')[1] == category) {
        $(this).addClass('active');
      }
      getCategory(category);
    });

    function getCategory(category) {
      $.ajax({
        url: "{{ route('filter') }}",
        data: {category:category},
      }).done( function(result) {
        $('#figure').html(result);
        location.hash=category;
      });
    };
    
  });
  </script>
  @endsection