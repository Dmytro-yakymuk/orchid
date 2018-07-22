@extends('layouts.layout')

  @section('extra-css')
    <link rel="stylesheet" type="text/css" href="{{ asset('css/algolia.css') }}" />
  @endsection

	@section('content')
	<div class="shop-detail-1 woocommerce" id="page">
		@include('menu_phone')
		<header class="header-style-1 static">
      {{ menu('main', 'menus.main') }}
    </header>

		<section class="sub-header shop-detail-1">
        <img class="rellax bg-overlay" src="{{ asset('images/sub-header/01.jpg') }}" alt="">
        <div class="overlay-call-to-action"></div>
        <h3 class="heading-style-3">Shop Detail</h3>
      </section>
      <section class="boxed-sm">
        @if($product)
          <div class="container">
            <div class="row product-detail">
              <div class="row main">
                <div class="col-md-6">
                  <div class="woocommerce-product-gallery">
                    <div class="main-carousel">
                      <div class="item">
                        <img class="img-responsive" src="{{ productImage($product->image) }}" alt="product thumbnail">
                      </div>
                      @if($product->images)
                        @foreach( json_decode($product->images, true) as $image)
                          <div class="item">
                            <img class="img-responsive" src="{{ productImage($image) }}" alt="product thumbnail">
                          </div>
                        @endforeach
                      @endif 
                    </div>
                    <div class="thumbnail-carousel">
                      <div class="item">
                        <img class="img-responsive" src="{{ productImage($product->image) }}" alt="product thumbnail">
                      </div>
                      @if($product->images)
                        @foreach( json_decode($product->images, true) as $image)
                          <div class="item">
                            <img class="img-responsive" src="{{ productImage($image) }}" alt="product thumbnail">
                          </div>
                        @endforeach
                      @endif
              
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="summary">
                    <div class="desc">
                      <div class="header-desc">
                        <h2 class="product-title">{{ $product->name }}</h2>
                        <p class="price">${{ $product->price / 100 }}</p>
                      </div>
                      <div class="body-desc">
                        <div class="woocommerce-product-details-short-description">
                          <p>{!! $product->description !!} </p>
                        </div>
                      </div>
                      <div class="footer-desc1">
                        <form class="cart">
                          <div class="quantity buttons-added">
                            <input class="minus" value="-" type="button">
                            <input class="input-text qty text" step="1" min="1" max="" name="quantity" value="1" title="Qty" size="4" pattern="[0-9]*" inputmode="numeric" type="number">
                            <input class="plus" value="+" type="button">
                          </div>
                        </form>

                          <form class="cart" action="#" method="POST">
                            {{ csrf_field() }}

                            <input type="hidden" name="id" class="cart_id" value="{{ $product->id }}">
                            <input type="hidden" name="name" class="cart_name" value="{{ $product->name }}">
                            <input type="hidden" name="price" class="cart_price" value="{{ $product->price / 100 }}">

                            <button type="button" id="cartAdd" class="btn btn-brand no-radius">Add to Cart</button>
                          </form>
                        

                          <form class="cart" action="{{ route('wishlist.store') }}" method="POST">
                            {{ csrf_field() }}

                            <input type="hidden" name="id" class="wish_id" value="{{ $product->id }}">
                            <input type="hidden" name="name" class="wish_name" value="{{ $product->name }}">
                            <input type="hidden" name="price" class="wish_price" value="{{ $product->price / 100}}">

                            <button type="submit" class="btn btn-wishlist btn-brand-ghost no-radius"><i class="fa fa-heart"></i></button>
                          </form>

                      </div>
                    </div>
                    <div class="product-meta">
                      <p class="posted-in">Categories:
                        <a href="#" rel="tag">
                          @if(count($product->categories) > 0)
                            @foreach($product->categories as $key => $value)
                              @if($key == 0)
                                {{ $value->name }}
                              @else
                               | {{ $value->name }}
                              @endif
                            @endforeach
                          @endif
                        </a>
                      </p>
                      <p class="tagged-as">Tags:
                        <a href="#" rel="tag">Natural</a>,
                        <a href="#" rel="tag">Organic</a>,
                        <a href="#" rel="tag">Health</a>,
                        <a href="#" rel="tag">Green</a>,
                        <a href="#" rel="tag">Vegetable</a>
                      </p>
                      <p class="id">ID:
                        <a href="#">{{ $product->id }}</a>
                      </p>
                    </div>
                    <div class="widget-social align-left">
                      <ul>
                        <li>
                          <a class="facebook" data-toggle="tooltip" title="Facebook" href="http://www.facebook.com/authemes">
                            <i class="fa fa-facebook"></i>
                          </a>
                        </li>
                        <li>
                          <a class="pinterest" data-toggle="tooltip" title="Pinterest" href="http://www.pinterest.com/authemes">
                            <i class="fa fa-pinterest"></i>
                          </a>
                        </li>
                        <li>
                          <a class="twitter" data-toggle="tooltip" title="Twitter" href="http://www.twitter.com/authemes">
                            <i class="fa fa-twitter"></i>
                          </a>
                        </li>
                        <li>
                          <a class="google-plus" data-toggle="tooltip" title="Google Plus" href="https://plus.google.com/authemes">
                            <i class="fa fa-google-plus"></i>
                          </a>
                        </li>
                        <li>
                          <a class="instagram" data-toggle="tooltip" title="Instagram" href="https://instagram.com/authemes">
                            <i class="fa fa-instagram"></i>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="woocommerce-tabs">
              <div class="row">
                <div class="col-md-6">
                  <div class="tab-content tab-content-style-1">
                    <div class="tab-pane fade in active" id="Description" role="tabpanel">
                      <h3 class="title-tab">Description</h3>
                      <ul class="arrow">
                        {!! $product->description !!}
                      </ul>
                    </div>
                    <div class="tab-pane fade" id="Additional-Information" role="tabpanel">
                      <h3 class="title-tab">Additional Information</h3>
                      <table class="shop_attributes table table-striped table-bordered">
                        <tbody>
                          <tr>
                            <th>Country</th>
                            <td>
                              <p>England, London</p>
                            </td>
                          </tr>
                          <tr>
                            <th>Weight</th>
                            <td>
                              <p>3.5 Kg</p>
                            </td>
                          </tr>
                          <tr>
                            <th>Next Day Delivery Available</th>
                            <td>
                              <p>Yes</p>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                    <div class="tab-pane fade" id="Review" role="tabpanel">
                      <h3 class="title-tab">2 reviews for Salad Organic Shop</h3>
                      <ol class="comment-list">
                        <li>
                          <div class="the-comment">
                            <div class="avatar">
                              <img class="avatar" alt="avatar" src="images/comment/01.png">
                            </div>
                            <div class="comment-box">
                              <div class="comment-author meta">
                                <p class="author">Mark Hunt</p>
                                <p class="time">15 March 2017</p>
                              </div>
                              <div class="comment-text">
                                <p>This is a test … Quisque ligulas ipsum, euismod atras vulputate iltricies etri elit.This is a test … </p>
                              </div>
                            </div>
                          </div>
                        </li>
                        <li>
                          <div class="the-comment">
                            <div class="avatar">
                              <img class="avatar" alt="avatar" src="images/comment/02.png">
                            </div>
                            <div class="comment-box">
                              <div class="comment-author meta">
                                <p class="author">Lori Peters</p>
                                <p class="time">16 March 2017</p>
                              </div>
                              <div class="comment-text">
                                <p>This is a reply test … </p>
                              </div>
                            </div>
                          </div>
                        </li>
                      </ol>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <ul class="tabs tab-style-1" role="tablist">
                    <li class="active" role="presentation">
                      <a href="#Description" aria-controls="Description" role="tab" data-toggle="tab">Description
                        <i class="more-less fa fa-angle-down"></i>
                      </a>
                    </li>
                    <li role="presentation">
                      <a href="#Additional-Information" aria-controls="Additional-Information" role="tab" data-toggle="tab">Additional Information
                        <i class="more-less fa fa-angle-down"></i>
                      </a>
                    </li>
                    <li role="presentation">
                      <a href="#Review" aria-controls="Review" role="tab" data-toggle="tab">Review (2)
                        <i class="more-less fa fa-angle-down"></i>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        @else
          <h3>Product not fount</h3>
        @endif
        <div class="container">
          <div class="relate-product">
            <div class="heading-wrapper text-center">
              <h3 class="heading">Related Products</h3>
            </div>
            <div class="row">
              <div class="carousel-product">
                @forelse($products as $item)
                  <div class="item">
                    <figure class="item">
                      <div class="product product-style-1">
                        <div class="img-wrapper">
                          <a href="{{ route('shop.show', $item->slug) }}">
                            <img class="img-responsive" src="{{ asset('storage/'.$item->image) }}" alt="product thumbnail">
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
                        </div>
                        <figcaption class="desc text-center">
                          <h3>
                            <a class="product-name" href="{{ route('shop.show', $item->slug) }}">{{ $item->name }}</a>
                          </h3>
                          <span class="price">${{ $item->price / 100 }}</span>
                        </figcaption>
                      </div>
                    </figure>
                  </div>
                @empty
                  <h3>Product not fount</h3>
                @endforelse
                
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
	@endsection

  @section('extra-js')
    <script>
    
    $(function () {

      //((cart.find('.counter').text()) > 0) && cart.addClass('items-added');

      $(document).on('click', '#cartAdd', function (e) {
        //var productName = $(this).closest('.product').find('.product-name').text();
        e.preventDefault();

        var id = $(this).parents('.cart').find('.cart_id').val();
        var name = $(this).parents('.cart').find('.cart_name').val();
        var price = $(this).parents('.cart').find('.cart_price').val();

        cartAdd(id, name, price);

        // $(this).addClass('is-added');
        // setTimeout(function () {
        //   actionAddToCart.removeClass('is-added');
        // }, 1000);
      });

      $(document).on('click', '.btn-wishlist', function (e) {
        e.preventDefault();

        var id = $(this).parents('.cart').find('.wish_id').val();
        var name = $(this).parents('.cart').find('.wish_name').val();
        var price = $(this).parents('.cart').find('.wish_price').val();
        storeWish(id, name, price);
      });


      function cartAdd(id, name, price) {
        // show counter if this is the first item added to the cart
        $.ajax({
          url: "{{ route('count') }}",
          data: { id: id, name: name, price: price }
        }).done(function (result) {
          if (result == 'yes') {

            // (!cart.hasClass('items-added')) && cart.addClass('items-added');
            // var cartItems = cart.find('.counter'),
            //   text = parseInt(cartItems.text()) + 1;
            // cartItems.text(text);
            notifyAddToCart(name);
            //alert(result + '///' + id + name + price);

          } else {
            //alert(result + '///' + id + name + price);
            checkedCart(name);
          }
        });
      };

      function storeWish(id, name, price) {
        // show counter if this is the first item added to the cart
        $.ajax({
          url: "{{ route('wishlist.store') }}",
          data: { id: id, name: name, price: price },
        }).done(function (result) {
          if (result == 'yes') {


            addToWishList(name);
            //alert(result + '///' + id + name + price);

          } else {
            //alert(result + '///' + id + name + price);
            removeFromWishList(name);
          }
        });
      };

      function notifyAddToCart(productName) {
    $.notify({
      title: productName,
      icon: 'lnr lnr-cart',
      message: "is added to card"
    }, {
        type: 'success',
        animate: {
          enter: 'animated fadeInUp',
          exit: 'animated fadeOut'
        },
        placement: {
          from: "bottom",
          align: "right"
        },
        offset: 20,
        spacing: 10,
        z_index: 1031,
      });
  };

  function checkedCart(productName) {
    $.notify({
      title: productName,
      icon: 'lnr lnr-cart',
      message: "is has cart"
    }, {
        type: 'danger',
        animate: {
          enter: 'animated fadeInUp',
          exit: 'animated fadeOut'
        },
        placement: {
          from: "bottom",
          align: "right"
        },
        offset: 20,
        spacing: 10,
        z_index: 1031,
      });
  };

  function addToWishList(productName) {
    $.notify({
      title: productName,
      icon: 'lnr lnr-heart',
      message: "is added to wish list"
    }, {
        type: 'success',
        animate: {
          enter: 'animated fadeInUp',
          exit: 'animated fadeOut'
        },
        placement: {
          from: "bottom",
          align: "right"
        },
        offset: 20,
        spacing: 10,
        z_index: 1031
      });
  };

  function removeFromWishList(productName) {
    $.notify({
      title: productName,
      icon: 'lnr lnr-heart',
      message: "is has wish list"
    }, {
        type: 'danger',
        animate: {
          enter: 'animated fadeInUp',
          exit: 'animated fadeOut'
        },
        placement: {
          from: "bottom",
          align: "right"
        },
        offset: 20,
        spacing: 10,
        z_index: 1031,
      });
  };


    });
        
    </script>
  @endsection

  