@extends('layouts.layout')
  @section('content')
    <div class="login" id="page">
        @include('menu_phone')
      <header class="header-style-1 static">
        {{ menu('main', 'menus.main') }}
      </header>
      <section class="sub-header shop-layout-1">
        <img class="rellax bg-overlay" src="{{ asset('images/sub-header/011.jpg') }}" alt="">
        <div class="overlay-call-to-action"></div>
        <h3 class="heading-style-3">My Account</h3>
      </section>
      <section class="boxed-sm">
        <div class="container">
          <div class="login-wrapper">
            <div class="row">
              <h3>Log In</h3>
              <form method="POST" action="{{ route('voyager.login') }}">
                @csrf

                <div class="form-group organic-form-2">
                  <label>Your Email *</label>
                  <input id="email" type="Email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required autofocus>
                </div>

                @if ($errors->has('email'))
                  <span class="invalid-feedback">
                    <strong>{{ $errors->first('email') }}</strong>
                  </span>
                @endif

                <div class="form-group organic-form-2">
                  <label>Password *</label>
                  <input id="password" type="Password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>
                </div>

                @if ($errors->has('password'))
                  <span class="invalid-feedback">
                    <strong>{{ $errors->first('password') }}</strong>
                  </span>
                @endif

                <div class="form-group remember-me">
                  <div class="checkbox pull-left">
                    <label>
                      <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> {{ __('Remember Me') }}
                    </label>
                  </div>

                  <a class="pull-right" href="{{ route('password.request') }}">Lost your password?</a>

                </div>

                <div class="form-group footer-form">
                  <button class="btn btn-brand pill" type="submit">SUBMIT</button>
                </div>

                 <a href="{{ route('guestCheckout.index') }}">Checkout as a Guest</a>

              </form>
            </div>
          </div>
        </div>
      </section>
    </div>
  @endsection





