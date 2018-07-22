@if(Cart::instance('wishlist')->count() > 0)
@if(count($errors) > 0)
    <div class="box error-box" >
        @foreach($errors->all() as $error)
            <p style="color: red">{{ $error }}</p>
        @endforeach
    </div>
@endif
            
@if(session('status'))
    <div class="box success-box" >
            <p style="color: green">{{ session('status') }}</p>
    </div>
@endif

    <div class="woocommerce-cart-form">
    <table class="woocommerce-cart-table">
        <thead>
        <tr>
            <th class="product-thumbnail">Product</th>
            <th class="product-name">Name</th>
            <th class="product-price">Price</th>
            <th class="product-status">Stock Status</th>
            <th class="product-add-to-cart"> </th>
            <th class="product-remove"></th>
        </tr>
        </thead>
        <tbody>
        @foreach(Cart::instance('wishlist')->content() as $row)
            <tr>
            <td class="product-thumbnail">
                <img src="images/product/thumb-cart-01.jpg" alt="product-thumbnail">
            </td>
            <td class="product-name" data-title="Product">
                <a class="product-name" href="{{ route('shop.show', $row->model->slug) }}">{{ $row->model->name }}</a>
            </td>
            <td class="product-price" data-title="Weight">0.4 kg</td>
            <td class="product-stock-status" data-title="Stock Status">
                <a href="{{ route('shop.show', $row->model->slug) }}">In Stock</a>
            </td>
            <td class="product-add-to-cart">
                <form action="{{ route('wishlist.cart', $row->rowId)}}" method="POST">
                {{ csrf_field() }}
                <button type="submit" class="btn btn-brand" >Add to Cart</button>
                </form>
            </td>
            <td class="product-remove text-right">
                <form class="delete_wish" action="{{ route( 'wishlist.destroy', $row->rowId) }}" method="POST">
                    {{ csrf_field() }}
                    <input type="hidden" name="id" class="wish_id_delete" value="{{ $row->rowId }}">
                    {{ method_field('DELETE') }}
                    <button type="submit" class="remove"></button>
                </form>
            </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    </div>
@else
    <div class="center">
    @if(count($errors) > 0)
    <div class="box error-box" >
        @foreach($errors->all() as $error)
        <p style="color: red">{{ $error }}</p>
        @endforeach
    </div>
    @endif
            
    @if(session('status'))
    <div class="box success-box" >
        <p style="color: green">{{ session('status') }}</p>
    </div>
    @endif
    <h3>Product in cart not fount!</h3>
    <div class="thenk">
    <a href="{{ url('/') }}" class="button">Home Page</a>
    </div>
</div>
@endif