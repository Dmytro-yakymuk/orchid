@extends('layouts.layout')
  @section('content')
  <div class="login" id="page">
      @include('menu_phone')
    <header class="header-style-1 static">
      {{ menu('main', 'menus.main') }}
    </header>
    <section class="sub-header shop-layout-1">
      <img class="rellax bg-overlay" src="images/sub-header/011.jpg" alt="">
      <div class="overlay-call-to-action"></div>
      <h3 class="heading-style-3">My Account</h3>
    </section>
    <section class="boxed-sm">
      <div class="container">
        <div class="login-wrapper">
          <div class="row">
            <h3>Register</h3>
            <form method="POST" action="{{ route('register') }}">
              @csrf

              <div class="form-group organic-form-2">
                <label>Your Name *</label>
                <input id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ old('name') }}" required autofocus>

                  @if ($errors->has('name'))
                      <span class="invalid-feedback">
                          <strong>{{ $errors->first('name') }}</strong>
                      </span>
                  @endif

              </div>
              <div class="form-group organic-form-2">
                <label>Your Email *</label>
                <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>

                @if ($errors->has('email'))
                    <span class="invalid-feedback">
                        <strong>{{ $errors->first('email') }}</strong>
                    </span>
                @endif
              </div>
              <div class="form-group organic-form-2">
                <label>Password *</label>
                <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

                @if ($errors->has('password'))
                    <span class="invalid-feedback">
                        <strong>{{ $errors->first('password') }}</strong>
                    </span>
                @endif
              </div>
              <div class="form-group organic-form-2">
                <label>Repeat Password *</label>
                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>

              </div>
              <div class="form-group remember-me">
                <div class="checkbox pull-left">
                  <label>
                    <input type="checkbox"> Privacy Policy Agreement?
                  </label>
                </div>
              </div>
              <div class="form-group footer-form">
                <button class="btn btn-brand pill" type="submit">SUBMIT</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
  </div>
@endsection
