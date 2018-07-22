
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

            <input type="hidden" name="id" class="wish_id" value="{{ $product->id }}">
            <input type="hidden" name="name" class="wish_name" value="{{ $product->name }}">
            <input type="hidden" name="price" class="wish_price" value="{{ $product->price / 100}}">

            <button type="submit" ><a class="js-wish-list js-notify-add-wish-list" >
                <span class="lnr lnr-heart"></span>
              </a></button>
          </form>
          

          <form class="wrapper-control-item item-add-cart js-action-add-cart " action="#" method="POST">
            {{ csrf_field() }}

            <input type="hidden" name="id" class="cart_id" value="{{ $product->id }}">
            <input type="hidden" name="name" class="cart_name" value="{{ $product->name }}">
            <input type="hidden" name="price" class="cart_price" value="{{ $product->price / 100 }}">

            <button type="button"><a class="animate-icon-cart" >
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

<div class="row" style="margin: auto;">
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

