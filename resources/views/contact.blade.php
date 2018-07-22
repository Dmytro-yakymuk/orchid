@extends('layouts.layout')
  @section('content')
  <div class="contact" id="page">
    @include('menu_phone')
    <header class="header-style-1 static">
      {{ menu('main', 'menus.main') }}
    </header>
      <section class="sub-header shop-layout-1">
        <img class="rellax bg-overlay" src="images/sub-header/09.jpg" alt="">
        <div class="overlay-call-to-action"></div>
        <h3 class="heading-style-3">Blog Detail</h3>
      </section>
      <section class="boxed-sm">
        <div class="container">
          <div class="row">
            <div class="row icon-box-contact-wrapper">
              <div class="row main">
                <div class="col-md-4">
                  <div class="icon-box">
                    <i class="fa fa-map-marker"></i>
                    <p>12/2th Quincy St, NYC 12018</p>
                  </div>
                </div>
                <div class="col-md-4">
                  <a class="icon-box" href="tel:0123456789 ">
                    <i class="fa fa-mobile"></i>(+1) 11 321 4567</a>
                </div>
                <div class="col-md-4">
                  <a class="icon-box" href="tel:0123456789 ">
                    <i class="fa fa-envelope-o"></i>contact@site.com </a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="map-canvas" id="js-map-canvas"></div>
          </div>
        </div>
        <div class="container">
          <div class="row form-contact">
            <div class="row main">
              <form>
                <div class="col-md-12">
                  <div class="form-group organic-form xs-radius">
                    <textarea class="form-control" placeholder="Your Message" rows="6"></textarea>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group organic-form xs-radius">
                    <input class="form-control" placeholder="Your Name">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group organic-form xs-radius">
                    <input class="form-control" placeholder="Your Email" type="email">
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="form-group organic-form xs-radius">
                    <input class="form-control" placeholder="Phone Number">
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="form-group organic-form xs-radius">
                    <button class="btn btn-brand pill">SEND EMAIL</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </section>
    </div>

@endsection