
  <div class="container">
    <div class="row">
      <div class="header-1-inner">
        <a class="brand-logo animsition-link" href="index.html">
          <img class="img-responsive" src="{{ asset('images/logo.png') }}" alt="" />
        </a>
        <nav>
          <ul class="menu hidden-xs">
            <li>
              <a href="{{ route('home') }}">Home<a>
            </li>
            <li>
              <a class="active" href="{{ route('shop.index') }}">Shop</a>
            </li>
            <li>
              <a href="about">About</a>
            </li>
            <li>
              <a href="blog">Blog</a>
              <ul>
                <li>
                  <a href="blog.html">Blog List Version 1</a>
                </li>
                <li>
                  <a href="blog-02.html">Blog List Version 2</a>
                </li>
                <li>
                  <a href="blog-03.html">Blog List Version 3</a>
                </li>
                <li>
                  <a href="blog-04.html">Blog List Version 4</a>
                </li>
                <li>
                  <a href="blog-detail.html">Blog Detail</a>
                  <ul>
                    <li>
                      <a href="blog-detail.html">Blog Detail</a>
                    </li>
                    <li>
                      <a href="blog-detail-02.html">Blog Detail Version 2</a>
                    </li>
                    <li>
                      <a href="blog-detail-03.html">Blog Detail Version 3</a>
                    </li>
                  </ul>
                </li>
              </ul>
            </li>
            <li>
              <a href="contact">Contact</a>
            </li>
            <li>
              <a href="faq.html">Feature</a>
              <ul>
                <li>
                  <a href="404.html">404 Page</a>
                </li>
                <li>
                  <a href="faq.html">Faq</a>
                </li>
                <li>
                  <a href="login.html">Login</a>
                </li>
                <li>
                  <a href="register.html">Register</a>
                </li>
                <li>
                  <a href="{{ route('wishlist.index') }}">Wishlist</a>
                </li>
              </ul>
            </li>
          </ul>
        </nav>
        <aside class="right">
          <div class="widget widget-control-header">
            <div class="select-custom-wrapper">
              <select class="no-border">
                <option>USD</option>
                <option>VND</option>
                <option>EUR</option>
                <option>JPY</option>
              </select>
            </div>
          </div>
          <div class="widget widget-control-header widget-search-header">
            <a class="control btn-open-search-form js-open-search-form-header" href="#">
              <span class="lnr lnr-magnifier"></span>
            </a>
            <div class="form-outer">
              <button class="btn-close-form-search-header js-close-search-form-header">
                <span class="lnr lnr-cross"></span>
              </button>
              <form>
                <input placeholder="Search" />
                <button class="search">
                  <span class="lnr lnr-magnifier"></span>
                </button>
              </form>
            </div>
          </div>
          <div class="widget widget-control-header widget-shop-cart js-widget-shop-cart">
            <a class="control" href="{{ route('cart.index') }}">
              <p class="counter">0</p>
              <span class="lnr lnr-cart"></span>
            </a>
          </div>
          <div class="widget widget-control-header hidden-lg hidden-md hidden-sm">
            <a class="navbar-toggle js-offcanvas-has-events" type="button" href="#menu">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </a>
          </div>
        </aside>
      </div>
    </div>
  </div>