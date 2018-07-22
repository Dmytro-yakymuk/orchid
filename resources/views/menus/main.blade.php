
  <div class="container" id="container_search">
    <div class="row">
      <div class="header-1-inner">
        <a class="brand-logo animsition-link" href="index.html">
          <img class="img-responsive" src="{{ asset('images/logo.png') }}" alt="" />
        </a>
        <nav>
          <div class="fl">
            <div>
              <ul class="menu hidden-xs">
                @foreach($items as $menu_item)
                  <li>
                    <a href="{{ $menu_item->link() }}">{{ $menu_item->title }}<a>
                  </li>
                @endforeach
              </ul>
            </div>
            <div>
              <ul class="menu hidden-xs">
                
                @guest
                  <li>
                    <a href="{{ route('voyager.login') }}">Login<a>
                  </li>

                  <li>
                    <a href="{{ route('register') }}">Register<a>
                  </li>
                @else
                  <li>
                    <a href="{{ route('logout') }}"
                      onclick="event.preventDefault();
                      document.getElementById('logout-form').submit();">
                      Logout
                    </a>
                  </li>

                  <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    {{ csrf_field() }}
                  </form>
                @endguest
                <li>
                  <a href="{{ route('cart.index') }}">Cart<a>
                </li>
              </ul>
            </div>
          </div>
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
          
            <a class="control btn-open-search-form js-open-search" href="#">
              <span class="lnr lnr-magnifier"></span>
            </a>

          </div>

          <div class="widget widget-control-header widget-shop-cart js-widget-shop-cart ">
            <a class="control" href="{{ route('cart.index') }}">
              <p class="counter">{{ session('count') ? session('count') : 0 }}</p>
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

    <div class="aa-input-container-none" id="aa-input-container">
      <input type="search" id="aa-search-input" class="aa-input-search" placeholder="Search for players or teams..." name="search" autocomplete="off" />
      <svg class="aa-input-icon" viewBox="654 -372 1664 1664">
          <path d="M1806,332c0-123.3-43.8-228.8-131.5-316.5C1586.8-72.2,1481.3-116,1358-116s-228.8,43.8-316.5,131.5  C953.8,103.2,910,208.7,910,332s43.8,228.8,131.5,316.5C1129.2,736.2,1234.7,780,1358,780s228.8-43.8,316.5-131.5  C1762.2,560.8,1806,455.3,1806,332z M2318,1164c0,34.7-12.7,64.7-38,90s-55.3,38-90,38c-36,0-66-12.7-90-38l-343-342  c-119.3,82.7-252.3,124-399,124c-95.3,0-186.5-18.5-273.5-55.5s-162-87-225-150s-113-138-150-225S654,427.3,654,332  s18.5-186.5,55.5-273.5s87-162,150-225s138-113,225-150S1262.7-372,1358-372s186.5,18.5,273.5,55.5s162,87,225,150s113,138,150,225  S2062,236.7,2062,332c0,146.7-41.3,279.7-124,399l343,343C2305.7,1098.7,2318,1128.7,2318,1164z" />
      </svg>
    </div>

  </div>
