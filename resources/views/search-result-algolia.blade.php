@extends('layouts.layout')

  @section('extra-css')
    <link rel="stylesheet" type="text/css" href="{{ asset('css/algolia.css') }}" />
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/instantsearch.js@2.8.0/dist/instantsearch.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/instantsearch.js@2.8.0/dist/instantsearch-theme-algolia.min.css">
  @endsection
  
  @section('content')
  <div class="shop-layout-1" id="page">
    @include('menu_phone')
    <header class="header-style-1 static">
      {{ menu('main', 'menus.main') }}
    </header>

    <section class="sub-header shop-layout-1">
      <img class="rellax bg-overlay" src="images/sub-header/01.jpg" alt="">
      <div class="overlay-call-to-action"></div>
      <h3 class="heading-style-3">Shop</h3>
    </section>
    <section class="boxed-sm">
      <div class="container">
        <div class="row">
          <div class="row main">

            <div class="col-md-3">
              <div class="sidebar">

                <div class="search-box-product" id="search-box">
                  <!-- SearchBox widget will appear here -->
                </div>

                <div class="widget widget-filter-price">
                  <h4 class="title-widget text-center">Filter by price</h4>
                  <input class="js-filter-price" type="text" data-slider-min="5" data-slider-max="200" data-slider-step="1" data-slider-value="100">
                  <div class="filter-price-control-box">
                    <a class="btn btn-brand btn-filter" href="#">FILTER</a>
                    <p>Price:
                      <span>$</span>
                      <span>1 - </span>
                      <span id="js-filter-result-val">100</span>
                      <span>$</span>
                    </p>
                  </div>
                </div>

                <div class="widget widget-categories">
                  <h4 class="title-widget text-center">Categories</h4>
                    <div id="refinement-list">
                      <!-- RefinementList widget will appear here -->
                    </div>
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
            </div>  <!-- end col-md-3 -->

            <div class="col-md-9">
                
              <div class="woocommerce-top-control wrapper">
                <div class="woocommerce-top-control">
                  
                  <div id="stats-container"></div>

                  <div class="sort">
                    <strong> Price: </strong>
                    <a href="{{ route('shop', ['category' => request()->category, 'sort' => 'low_to_high' ]) }}" >low to high | </a>
                    <a href="{{ route('shop', ['category' => request()->category, 'sort' => 'high_to_low' ]) }}" >high to low</a>
                  </div> 
                </div>
              </div>

              <!-- <div class="row product-grid-equal-height-wrapper product-equal-height-4-columns flex multi-row"> -->
              <div class="row blog-h flex multi-row">
                <div id="hits">
                  <!-- Hits widget will appear here -->
                </div>
              </div>

              <div id="pagination">
                <!-- Pagination widget will appear here -->
              </div>

            </div>

          </div>
        </div>
      </div>
    </section>
  </div>
@endsection

@section('extra-js')
  <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
  <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
  <script src="{{ asset('js/algolia.js') }}"></script>
  <script src="https://cdn.jsdelivr.net/npm/instantsearch.js@2.8.0"></script>
  <script src="{{ asset('js/algolia-instantsearch.js') }}"></script>
@endsection