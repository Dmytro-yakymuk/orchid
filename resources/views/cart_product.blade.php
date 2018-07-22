@if(Cart::count() > 0)

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
            <th class="product-name"></th>
            <th class="product-weight">Weight</th>
            <th class="product-quantity">Quantity</th>
            <th class="product-price">Price</th>
            <th class="product-subtotal">Total</th>
            <th class="product-remove"></th>
        </tr>
        </thead>
        <tbody>
        @foreach(Cart::content() as $row)
        <tr>
            <td class="product-thumbnail">
                <img style="width: 120px;" src="{{ asset('storage/'.$row->model->image) }}" alt="product-thumbnail">
            </td>
            <td class="product-name" data-title="Product">
                <a class="product-name" href="{{ route('shop.show', $row->model->slug) }}">{{ $row->model->name }}</a>
            </td>
            <td class="product-weight" data-title="Weight">0.4 kg</td>
            <td class="product-quantity" data-title="Quantity">
                <input class="qty" step="1" min="0" max="" name="product-name" value="1" title="Qty" size="4" pattern="[0-9]*" inputmode="numeric" type="number">
            </td>
            <td class="product-price" data-title="Price">${{ $row->model->price / 100 }}</td>
            <td class="product-subtotal" data-title="Total">${{ $row->model->price * $row->qty / 100 }}</td>
            <td class="product-remove">
            <form class="delete_cart" action="{{ route( 'cart.destroy', $row->rowId) }}" method="POST">
                {{ csrf_field() }}
                <input type="hidden" name="id" class="cart_id_delete" value="{{ $row->rowId }}">
                {{ method_field('DELETE') }}
                <button type="button" class="remove"></button>
            </form>
            </td>
        </tr>
        @endforeach
        </tbody>
        <tfoot>
        <tr>
            <td colspan="7">
            <div class="form-coupon organic-form">
                <form action="{{ route('coupon.store') }}" method="POST">
                {{ csrf_field() }}

                @if( !session()->has('coupon') )
                    <div class="form-group">
                        <input type="text" name="coupon_code" value="{{ old('coupon_code') }}" class="form-control pill" placeholder="Coupon Code">
                    </div>

                    <div class="form-group">
                        <button id="coupon-add" class="btn btn-brand pill" type="submit">APPLY COUPON</button>
                    </div>
                @endif

                <div class="form-group update-cart">
                    <a class="btn btn-brand-ghost pill">UPDATE CART</a>
                </div>

                </form>
            </div>
            </td>
        </tr>
        </tfoot>
    </table>
    </div>
    <div class="cart_totals">
    <h3 class="title">Cart Total</h3>
    <div class="row">
        <div class="col-md-8">
        <table class="woocommerce-cart-subtotal">
            <tbody>
            <tr>
                <th>Subtotal</th>
                <td data-title="Subtotal">${{ Cart::subtotal() }}</td>
            </tr>
            @if( session()->has('coupon') )
                <tr>
                <th>Discount({{ session()->get('coupon')['name'] }})</th>
                <td data-title="Total"> 
                    <div class="fl">
                    <p style="padding-top: 12px; color: green;">-${{ $discount }}</p>
                    <form class="delete_coupon" action="{{ route('coupon.destroy') }}" method="POST">
                        {{ csrf_field() }}
                        {{ method_field('delete') }}
                        <button id="coupon-delete" class="btn btn-brand pill" type="submit">DELETE COUPON</button>
                    </form>
                    </div>
                </td>
                </tr>
            @endif
            <tr>
                <th>Total</th>
                @if( session()->has('coupon') )
                <td data-title="Total">${{ $newSubtotal }}</td>
                @else
                <td data-title="Total">${{ Cart::subtotal() }}</td>
                @endif
            </tr>
            </tbody>
        </table>
        <div class="proceed-to-checkout">
            <a class="btn btn-brand pill" href="{{ route('checkout.index') }}">PROCEED TO CHECKOUT</a>
        </div>
        </div>
    </div>
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