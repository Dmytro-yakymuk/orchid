@extends('layouts.layout')
  @section('content')
    <div class="home-1" id="page">
        @include('menu_phone')
      <header class="header-style-1">
        {{ menu('main', 'menus.main') }}
      </header>
      <div class="banner banner-image-fit-screen">
        <div class="rev_slider slider-home-1" id="slider_1">
          <ul>
            <li>
              <img class="rev-slidebg" src="images/slider/1.jpg" alt="demo" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10">
            </li>
          </ul>
        </div>
      </div>
      <section class="boxed-sm">
        <div class="container">
          <div class="row">
            <div class="product-category-grid-style-1">
              <div class="row">
                <div class="col-sm-4">
                  <a href="{{ route('shop', ['category' => 'vegatable']) }}">
                    <figure class="product-category-item">
                      <div class="thumbnail">
                        <img src="images/category-product/1.jpg" alt="" />
                      </div>
                      <figcaption>
                        <h3>Vegetable</h3>
                      </figcaption>
                    </figure>
                  </a>
                </div>
                <div class="col-sm-4">
                  <a href="{{ route('shop', ['category' => 'fruits']) }}">
                    <figure class="product-category-item">
                      <div class="thumbnail">
                        <img src="images/category-product/2.jpg" alt="" />
                      </div>
                      <figcaption>
                        <h3>Fruits</h3>
                      </figcaption>
                    </figure>
                  </a>
                </div>
                <div class="col-sm-4">
                  <a href="{{ route('shop', ['category' => 'meat']) }}">
                    <figure class="product-category-item">
                      <div class="thumbnail">
                        <img src="images/category-product/3.jpg" alt="" />
                      </div>
                      <figcaption>
                        <h3>Meat</h3>
                      </figcaption>
                    </figure>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="boxed-sm">
        <div class="container">
          <div class="heading-wrapper text-center">
            <h3 class="heading">Our Products</h3>
          </div>
          <div class="row">
            <div class="row js-product-masonry-layout-1 product-masonry-layout-1">
              <div class="grid-sizer"></div>
              @forelse($products as $key => $product)
                <figure class="item {{ $key == 1 ? 'item-size-2' : '' }}">
                  <div class="product product-style-2">
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
                        <div class="wrapper-control-item item-wish-list">
                          <a class="js-wish-list js-notify-add-wish-list" href="#">
                            <span class="lnr lnr-heart"></span>
                          </a>
                        </div>
                        <div class="wrapper-control-item item-add-cart js-action-add-cart">
                          <a class="animate-icon-cart" href="#">
                            <span class="lnr lnr-cart"></span>
                          </a>
                          <svg x="0px" y="0px" width="36px" height="32px" viewbox="0 0 36 32">
                            <path stroke-dasharray="19.79 19.79" fill="none" ,="," stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"></path>
                          </svg>
                        </div>
                      </div>
                      <figcaption class="desc">
                        <h3>
                          <a class="product-name" href="{{ route('shop.show', $product->slug) }}">{{ $product->name }}</a>
                        </h3>
                        <span class="price">${{ $product->price / 100 }}</span>
                      </figcaption>
                    </div>
                  </div>
                </figure>
              @empty
                <h3>Product not fount</h3>
              @endforelse
              
            </div>
          </div>
        </div>
      </section>
      <div class="call-to-action-style-1">
        <img class="rellax bg-overlay" src="images/call-to-action/1.jpg" alt="" />
        <div class="overlay-call-to-action"></div>
        <div class="container">
          <div class="row">
            <p class="h3">Orchid Food</p>
            <h2>Healthy - Fresh - Delicious.</h2>
            <a class="btn btn-brand pill" href="#">VIEW MORE </a>
          </div>
        </div>
      </div>
      <section class="boxed-sm">
        <div class="container">
          <div class="heading-wrapper text-center">
            <h3 class="heading">The Blog</h3>
          </div>
          <div class="row">
            <div class="row blog-h reverse flex one-row multi-row-sm">
              <div class="col-md-4">
                <div class="post">
                  <div class="img-wrapper js-set-bg-blog-thumb">
                    <a href="blog-detail.html">
                      <img src="images/blog/01.jpg" alt="Image" />
                    </a>
                  </div>
                  <div class="desc">
                    <h4>
                      <a href="blog-detail.html">Beauty With Orchid Products</a>
                    </h4>
                    <p class="meta">
                      <span class="time">Feberuary 05, 2017</span>
                      <span class="comment">2</span>
                    </p>
                    <p>Etiam at varius diam, id blandit erat. Suspendisse eget volutpat risus, id venenatis justo. Fusce elementum ligula elit. Duis ultricies ultrices nibh, a tincidunt risus pretium eleifend. </p>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="post">
                  <div class="img-wrapper js-set-bg-blog-thumb">
                    <a href="blog-detail.html">
                      <img src="images/blog/02.jpg" alt="Image" />
                    </a>
                  </div>
                  <div class="desc">
                    <h4>
                      <a href="blog-detail.html">Green Vegetables Are Good For Healthy</a>
                    </h4>
                    <p class="meta">
                      <span class="time">January 30, 2017</span>
                      <span class="comment">0</span>
                    </p>
                    <p>Vivamus consectetur nulla mattis lorem ultricies, ac congue tellus consectetur. Vivamus sed purus volutpat, varius mauris id, tempus augue. Nuefd ans congue liquam.</p>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="post">
                  <div class="img-wrapper js-set-bg-blog-thumb">
                    <a href="blog-detail.html">
                      <img src="images/blog/03.jpg" alt="Image" />
                    </a>
                  </div>
                  <div class="desc">
                    <h4>
                      <a href="blog-detail.html">Refreshing Green Smoothie Recipe</a>
                    </h4>
                    <p class="meta">
                      <span class="time">January 20, 2017</span>
                      <span class="comment">4</span>
                    </p>
                    <p>Praesent efficitur felis eu luctus vestibulum. In hac habitasse platea dictumst. Nam egestas eu nisl ac pellentesque. Duis congue suscipit lorem vel congue. </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
    <div class="call-to-action-style-2">
      <div class="wrapper-carousel-background">
        <img src="images/call-to-action/1-1.jpg" alt="" />
        <img src="images/call-to-action/1-2.jpg" alt="" />
        <img src="images/call-to-action/1-3.jpg" alt="" />
        <img src="images/call-to-action/1-4.jpg" alt="" />
      </div>
      <div class="overlay-call-to-action"></div>
      <a class="btn btn-brand pill icon-left" href="#">
        <i class="fa fa-instagram"></i>FOWLLOW US</a>
    </div>
@endsection