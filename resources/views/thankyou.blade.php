@extends('layouts.layout')
	@section('content')
	<div class="about" id="page">
		@include('menu_phone')
		<header class="header-style-1 static">
      {{ menu('main', 'menus.main') }}
   	</header>
    <section class="sub-header shop-layout-1">
      <img class="rellax bg-overlay" src="images/sub-header/08.jpg" alt="">
      <div class="overlay-call-to-action"></div>
      <h3 class="heading-style-3">About Us</h3>
    </section>
    <section class="boxed-sm">
      <div class="center">

        @if(count($errors) > 0)
          <div class="box error-box" >
            @foreach($errors->all() as $error)
              <p style="color: red">{{ $error }}</p>
            @endforeach
          </div>
        @endif
                  
        @if(session('success'))
          <div class="box success-box" >
            <p style="color: green">{{ session('success') }}</p>
          </div>
        @endif

        <h3>Thenk You!</h3>
        <div class="thenk">
          <a href="{{ url('/') }}" class="button">Home Page</a>
        </div>

      </div>
    </section>
  </div>
@endsection