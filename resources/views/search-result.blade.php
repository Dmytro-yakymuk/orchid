@extends('layouts.layout')

  @section('extra-css')
    <link rel="stylesheet" type="text/css" href="{{ asset('css/algolia.css') }}" />
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
      <div class="woocommerce-top-control wrapper">
        <section class="boxed-sm">
          <div class="container">
            <div class="row">
              <div class="woocommerce-top-control">
                <p class="woocommerce-result-count">Showing 1 - {{ $products->count() }} of {{ $products->total() }} results for "<b>{{ request()->input('query') }}<b>"</p>
                <form class="woocommerce-ordering select-custom-wrapper" method="get">
                  <select class="orderby select-custom-wrapper" name="orderby">
                    <option value="menu_order" selected="selected">Default sorting</option>
                    <option value="popularity">Sort by popularity</option>
                    <option value="rating">Sort by average rating</option>
                    <option value="date">Sort by newness</option>
                    <option value="price">Sort by price: low to high</option>
                    <option value="price-desc">Sort by price: high to low</option>
                  </select>
                </form>
              </div>
            </div>
          </div>
        </section>
      </div>
      <section class="box-sm">
        <div class="container">
          <div class="row main">

            @if(count($errors) > 0)
                <div class="box error-box" >
                  @foreach($errors->all() as $error)
                    <p style="color: red">{{ $error }}</p>
                  @endforeach
                </div>
              @endif
                        
              @if(session('status'))
                <div class="box success-box" >
                  <p style="color: green">{{ session('status') }}</p>
                </div>
              @endif

            <div class="row product-grid-equal-height-wrapper product-equal-height-4-columns flex multi-row">

              @forelse($products as $product)
                <figure class="item">
                  <div class="product product-style-1">
                    <div class="img-wrapper">
                      <a href="{{ route('shop.show', $product->slug) }}">
                        <img class="img-responsive" src="{{ asset('storage/'.$product->image) }}" alt="product thumbnail" />
                      </a>
                      <div class="product-control-wrapper bottom-right">
                        <div class="wrapper-control-item">
                          <a class="js-quick-view" href="#" type="button" data-toggle="modal" data-target="#quick-view-product">
                            <span class="lnr lnr-eye"></span>
                          </a>
                        </div>
                        <form class="wrapper-control-item item-wish-list" action="{{ route('wishlist.store') }}" method="POST">
                          {{ csrf_field() }}

                          <input type="hidden" name="id" value="{{ $product->id }}">
                          <input type="hidden" name="name" value="{{ $product->name }}">
                          <input type="hidden" name="price" value="{{ $product->price / 100}}">

                          <button type="submit" ><a class="js-wish-list js-notify-add-wish-list" >
                              <span class="lnr lnr-heart"></span>
                            </a></button>
                        </form>
                        

                        <form class="wrapper-control-item item-add-cart js-action-add-cart" action="{{ route('cart.store') }}" method="POST">
                          {{ csrf_field() }}

                          <input type="hidden" name="id" value="{{ $product->id }}">
                          <input type="hidden" name="name" value="{{ $product->name }}">
                          <input type="hidden" name="price" value="{{ $product->price / 100 }}">

                          <button type="submit"><a class="animate-icon-cart" >
                            <span class="lnr lnr-cart"></span>
                          </a></button>

                          <svg x="0px" y="0px" width="36px" height="32px" viewbox="0 0 36 32">
                            <path stroke-dasharray="19.79 19.79" fill="none" ,="," stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"></path>
                          </svg>
                          
                        </form>

                      </div>
                    </div>
                    <figcaption class="desc text-center">
                      <h3>
                        <a class="product-name" href="{{ route('shop.show', $product->slug) }}">{{ $product->name }}</a>
                      </h3>
                      <span class="price">${{ $product->price / 100 }}</span>
                    </figcaption>
                  </div>
                </figure>
              @empty
                <h3>Product not fount</h3>
              @endforelse

            </div>


            <div class="row">
              <div class="col-md-12 text-center">
                <nav>
                  <ul class="pagination pagination-style-2">
                    <li>
                    <!-- LastPage() - повертає номер останьої сторінки посторінкової пагінації  -->
                    @if($products->LastPage() > 1)

                        <!-- currentPage() - повертає номер цієї сторінки -->
                        @if($products->currentPage() !== 1)
                            <a class="prev page-numbers" href="{{ $products->appends(request()->input())->url(($products->currentPage() - 1)) }}"><i class="fa fa-long-arrow-left"></i></a>
                        @endif
                        
                        @for($i = 1;$i <= $products->LastPage(); $i++)
                            @if($products->currentPage() == $i)
                                <span class="page-numbers current" >{{ $i }}</span>
                            @else
                                <a class="page-numbers" href="{{ $products->appends(request()->input())->url($i) }}">{{ $i }}</a>
                            @endif
                        @endfor

                        @if($products->currentPage() !== $products->LastPage())
                            <a class="next page-numbers" href="{{ $products->appends(request()->input())->url(($products->currentPage() + 1)) }}"><i class="fa fa-long-arrow-right"></i></a>
                        @endif

                    @endif
                    </li>
                  </ul>
                </nav>
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
@endsection