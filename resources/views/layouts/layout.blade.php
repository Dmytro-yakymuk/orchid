<!DOCTYPE html>
<html>
  <head>
    <title>Home</title>
    <meta charset="utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="{{ asset('css/main.css') }}" />
    <link rel="stylesheet" type="text/css" href="{{ asset('css/algolia.css') }}" />
    @yield('extra-css')
    <script src="https://js.stripe.com/v3/"></script>
  </head>
  <body class="animsition">

    @yield('content')
    @include('footer')

    <script src="{{ asset('js/library/jquery.min.js') }}"></script>
    <script src="{{ asset('js/library/bootstrap.min.js') }}"></script>
    <script src="{{ asset('js/function-check-viewport.js') }}"></script>
    <script src="{{ asset('js/library/slick.min.js') }}"></script>
    <script src="{{ asset('js/library/select2.full.min.js') }}"></script>
    <script src="{{ asset('js/library/imagesloaded.pkgd.min.js') }}"></script>
    <script src="{{ asset('js/library/jquery.mmenu.all.min.js') }}"></script>
    <script src="{{ asset('js/library/rellax.min.js') }}"></script>
    <script src="{{ asset('js/library/isotope.pkgd.min.js') }}"></script>
    <script src="{{ asset('js/library/bootstrap-notify.min.js') }}"></script>
    <script src="{{ asset('js/library/bootstrap-slider.js') }}"></script>
    <script src="{{ asset('js/library/in-view.min.js') }}"></script>
    <script src="{{ asset('js/library/countUp.js') }}"></script>
    <script src="{{ asset('js/library/animsition.min.js') }}"></script>
    <link rel="stylesheet" type="text/css" href="{{ asset('revolution/css/settings.css') }}" />
    <link rel="stylesheet" type="text/css" href="{{ asset('revolution/css/layers.css') }}" />
    <link rel="stylesheet" type="text/css" href="{{ asset('revolution/css/navigation.css') }}" />
    <script src="{{ asset('revolution/js/jquery.themepunch.tools.min.js') }}"></script>
    <script src="{{ asset('revolution/js/jquery.themepunch.revolution.min.js') }}"></script>
    <script src="{{ asset('revolution/js/extensions/revolution.extension.actions.min.js') }}"></script>
    <script src="{{ asset('revolution/js/extensions/revolution.extension.carousel.min.js') }}"></script>
    <script src="{{ asset('revolution/js/extensions/revolution.extension.kenburn.min.js') }}"></script>
    <script src="{{ asset('revolution/js/extensions/revolution.extension.layeranimation.min.js') }}"></script>
    <script src="{{ asset('revolution/js/extensions/revolution.extension.migration.min.js') }}"></script>
    <script src="{{ asset('revolution/js/extensions/revolution.extension.navigation.min.js') }}"></script>
    <script src="{{ asset('revolution/js/extensions/revolution.extension.parallax.min.js') }}"></script>
    <script src="{{ asset('revolution/js/extensions/revolution.extension.slideanims.min.js') }}"></script>
    <script src="{{ asset('revolution/js/extensions/revolution.extension.video.min.js') }}"></script>
    <script src="{{ asset('js/global.js') }}"></script>
    <script src="{{ asset('js/config-banner-home-1.js') }}"></script>

    <!--  -->
    <script src="{{ asset('js/config-mm-menu.js') }}"></script>
    <script src="{{ asset('js/config-set-bg-blog-thumb.js') }}"></script>
    <script src="{{ asset('js/config-isotope-product-home-1.js') }}"></script>

    <!-- My -->
    <script src="{{ asset('js/config-inview-counter-up.js') }}"></script>
    <script src="{{ asset('js/config-carousel.js') }}"></script>
    <script src="{{ asset('js/search-menu.js') }}"></script>
    <!-- <script src="{{ asset('js/config-price-slider.js') }}"></script> -->

    @yield('extra-js')

    <!--  -->
    <script src="{{ asset('js/config-carousel-thumbnail.js') }}"></script>
    <script src="{{ asset('js/config-carousel-product-quickview.js') }}"></script>

    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>

    <!-- Demo Only-->
    <script src="{{ asset('js/demo-add-to-cart.js') }}"></script>
 
  </body>
</html>

