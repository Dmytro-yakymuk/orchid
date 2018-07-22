@extends('layouts.layout')
  @section('content')
  <div class="checkout" id="page">
    @include('menu_phone')
    <header class="header-style-1 static">
      {{ menu('main', 'menus.main') }}
    </header>
      <section class="sub-header shop-detail-1">
        <img class="rellax bg-overlay" src="images/sub-header/015.jpg" alt="">
        <div class="overlay-call-to-action"></div>
        <h3 class="heading-style-3">Checkout</h3>
      </section>
      <section class="boxed-sm">
        <div class="container">
          <div class="woocommerce">
            <div class="woocommerce-info-wrapper">
              <div class="row">
                <div class="woocommerce-info">
                  <i class="fa fa-check"></i>Returning customer?
                  <a href="login.html">Click here to login</a>
                </div>
                <div class="woocommerce-info">
                  <i class="fa fa-check"></i>Have a coupon?
                  <a href="shop-cart.html">Click here to enter your code</a>
                </div>
              </div>
            </div>
            <div class="row">
              @if(count($errors) > 0)
                <div class="box error-box" >
                    @foreach($errors->all() as $error)
                        <p style="color: red">{!! $error !!}</p>
                    @endforeach
                </div>
              @endif
                        
              @if(session('status'))
                <div class="box success-box" >
                    <p style="color: green">{{ session('status') }}</p>
                </div>
              @endif
              <form action="{{ route('checkout.store') }}" method="POST" id="payment-form" class="woocommerce-checkout" name="checkout">
                {{ csrf_field() }}
                <h4>Billing Details</h4>
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group Orchid-form no-radius">
                      <label>First Name *</label>
                      <input class="form-control" name="first_name" value="{{ old('first_name') }}" type="text">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group Orchid-form no-radius">
                      <label>Last Name *</label>
                      <input class="form-control" name="last_name" value="{{ old('last_name') }}" type="text">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group Orchid-form no-radius">
                      <label>Companty Name </label>
                      <input class="form-control" name="company" value="{{ old('company') }}" type="text">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group Orchid-form no-radius">
                      <label>Email Address *</label>
                      @if(auth()->user())
                        <input class="form-control" name="email" value="{{ auth()->user()->email }}" type="email">
                      @else
                        <input class="form-control" name="email" value="{{ old('email') }}" type="email">
                      @endif
                      
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group Orchid-form no-radius">
                      <label>Phone *</label>
                      <input class="form-control" name="phone" value="{{ old('phone') }}" type="text">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group Orchid-form no-radius">
                      <label>Country *</label>
                      <select class="select2 form-control" aria-hidden="true" tabindex="-1" name="country" value="{{ old('country') }}" autocomplete="country">
                        <option value="">Select a country…</option>
                        <option value="AX">Åland Islands</option>
                        <option value="AF">Afghanistan</option>
                        <option value="AL">Albania</option>
                        <option value="DZ">Algeria</option>
                        <option value="AS">American Samoa</option>
                        <option value="AD">Andorra</option>
                        <option value="AO">Angola</option>
                        <option value="AI">Anguilla</option>
                        <option value="AQ">Antarctica</option>
                        <option value="AG">Antigua and Barbuda</option>
                        <option value="AR">Argentina</option>
                        <option value="AM">Armenia</option>
                        <option value="AW">Aruba</option>
                        <option value="AU">Australia</option>
                        <option value="AT">Austria</option>
                        <option value="AZ">Azerbaijan</option>
                        <option value="BS">Bahamas</option>
                        <option value="BH">Bahrain</option>
                        <option value="BD">Bangladesh</option>
                        <option value="BB">Barbados</option>
                        <option value="BY">Belarus</option>
                        <option value="PW">Belau</option>
                        <option value="BE">Belgium</option>
                        <option value="BZ">Belize</option>
                        <option value="BJ">Benin</option>
                        <option value="BM">Bermuda</option>
                        <option value="BT">Bhutan</option>
                        <option value="BO">Bolivia</option>
                        <option value="BQ">Bonaire, Saint Eustatius and Saba</option>
                        <option value="BA">Bosnia and Herzegovina</option>
                        <option value="BW">Botswana</option>
                        <option value="BV">Bouvet Island</option>
                        <option value="BR">Brazil</option>
                        <option value="IO">British Indian Ocean Territory</option>
                        <option value="VG">British Virgin Islands</option>
                        <option value="BN">Brunei</option>
                        <option value="BG">Bulgaria</option>
                        <option value="BF">Burkina Faso</option>
                        <option value="BI">Burundi</option>
                        <option value="KH">Cambodia</option>
                        <option value="CM">Cameroon</option>
                        <option value="CA">Canada</option>
                        <option value="CV">Cape Verde</option>
                        <option value="KY">Cayman Islands</option>
                        <option value="CF">Central African Republic</option>
                        <option value="TD">Chad</option>
                        <option value="CL">Chile</option>
                        <option value="CN">China</option>
                        <option value="CX">Christmas Island</option>
                        <option value="CC">Cocos (Keeling) Islands</option>
                        <option value="CO">Colombia</option>
                        <option value="KM">Comoros</option>
                        <option value="CG">Congo (Brazzaville)</option>
                        <option value="CD">Congo (Kinshasa)</option>
                        <option value="CK">Cook Islands</option>
                        <option value="CR">Costa Rica</option>
                        <option value="HR">Croatia</option>
                        <option value="CU">Cuba</option>
                        <option value="CW">Curaçao</option>
                        <option value="CY">Cyprus</option>
                        <option value="CZ">Czech Republic</option>
                        <option value="DK">Denmark</option>
                        <option value="DJ">Djibouti</option>
                        <option value="DM">Dominica</option>
                        <option value="DO">Dominican Republic</option>
                        <option value="EC">Ecuador</option>
                        <option value="EG">Egypt</option>
                        <option value="SV">El Salvador</option>
                        <option value="GQ">Equatorial Guinea</option>
                        <option value="ER">Eritrea</option>
                        <option value="EE">Estonia</option>
                        <option value="ET">Ethiopia</option>
                        <option value="FK">Falkland Islands</option>
                        <option value="FO">Faroe Islands</option>
                        <option value="FJ">Fiji</option>
                        <option value="FI">Finland</option>
                        <option value="FR">France</option>
                        <option value="GF">French Guiana</option>
                        <option value="PF">French Polynesia</option>
                        <option value="TF">French Southern Territories</option>
                        <option value="GA">Gabon</option>
                        <option value="GM">Gambia</option>
                        <option value="GE">Georgia</option>
                        <option value="DE">Germany</option>
                        <option value="GH">Ghana</option>
                        <option value="GI">Gibraltar</option>
                        <option value="GR">Greece</option>
                        <option value="GL">Greenland</option>
                        <option value="GD">Grenada</option>
                        <option value="GP">Guadeloupe</option>
                        <option value="GU">Guam</option>
                        <option value="GT">Guatemala</option>
                        <option value="GG">Guernsey</option>
                        <option value="GN">Guinea</option>
                        <option value="GW">Guinea-Bissau</option>
                        <option value="GY">Guyana</option>
                        <option value="HT">Haiti</option>
                        <option value="HM">Heard Island and McDonald Islands</option>
                        <option value="HN">Honduras</option>
                        <option value="HK">Hong Kong</option>
                        <option value="HU">Hungary</option>
                        <option value="IS">Iceland</option>
                        <option value="IN">India</option>
                        <option value="ID">Indonesia</option>
                        <option value="IR">Iran</option>
                        <option value="IQ">Iraq</option>
                        <option value="IE">Ireland</option>
                        <option value="IM">Isle of Man</option>
                        <option value="IL">Israel</option>
                        <option value="IT">Italy</option>
                        <option value="CI">Ivory Coast</option>
                        <option value="JM">Jamaica</option>
                        <option value="JP">Japan</option>
                        <option value="JE">Jersey</option>
                        <option value="JO">Jordan</option>
                        <option value="KZ">Kazakhstan</option>
                        <option value="KE">Kenya</option>
                        <option value="KI">Kiribati</option>
                        <option value="KW">Kuwait</option>
                        <option value="KG">Kyrgyzstan</option>
                        <option value="LA">Laos</option>
                        <option value="LV">Latvia</option>
                        <option value="LB">Lebanon</option>
                        <option value="LS">Lesotho</option>
                        <option value="LR">Liberia</option>
                        <option value="LY">Libya</option>
                        <option value="LI">Liechtenstein</option>
                        <option value="LT">Lithuania</option>
                        <option value="LU">Luxembourg</option>
                        <option value="MO">Macao S.A.R., China</option>
                        <option value="MK">Macedonia</option>
                        <option value="MG">Madagascar</option>
                        <option value="MW">Malawi</option>
                        <option value="MY">Malaysia</option>
                        <option value="MV">Maldives</option>
                        <option value="ML">Mali</option>
                        <option value="MT">Malta</option>
                        <option value="MH">Marshall Islands</option>
                        <option value="MQ">Martinique</option>
                        <option value="MR">Mauritania</option>
                        <option value="MU">Mauritius</option>
                        <option value="YT">Mayotte</option>
                        <option value="MX">Mexico</option>
                        <option value="FM">Micronesia</option>
                        <option value="MD">Moldova</option>
                        <option value="MC">Monaco</option>
                        <option value="MN">Mongolia</option>
                        <option value="ME">Montenegro</option>
                        <option value="MS">Montserrat</option>
                        <option value="MA">Morocco</option>
                        <option value="MZ">Mozambique</option>
                        <option value="MM">Myanmar</option>
                        <option value="NA">Namibia</option>
                        <option value="NR">Nauru</option>
                        <option value="NP">Nepal</option>
                        <option value="NL">Netherlands</option>
                        <option value="NC">New Caledonia</option>
                        <option value="NZ">New Zealand</option>
                        <option value="NI">Nicaragua</option>
                        <option value="NE">Niger</option>
                        <option value="NG">Nigeria</option>
                        <option value="NU">Niue</option>
                        <option value="NF">Norfolk Island</option>
                        <option value="KP">North Korea</option>
                        <option value="MP">Northern Mariana Islands</option>
                        <option value="NO">Norway</option>
                        <option value="OM">Oman</option>
                        <option value="PK">Pakistan</option>
                        <option value="PS">Palestinian Territory</option>
                        <option value="PA">Panama</option>
                        <option value="PG">Papua New Guinea</option>
                        <option value="PY">Paraguay</option>
                        <option value="PE">Peru</option>
                        <option value="PH">Philippines</option>
                        <option value="PN">Pitcairn</option>
                        <option value="PL">Poland</option>
                        <option value="PT">Portugal</option>
                        <option value="PR">Puerto Rico</option>
                        <option value="QA">Qatar</option>
                        <option value="RE">Reunion</option>
                        <option value="RO">Romania</option>
                        <option value="RU">Russia</option>
                        <option value="RW">Rwanda</option>
                        <option value="ST">São Tomé and Príncipe</option>
                        <option value="BL">Saint Barthélemy</option>
                        <option value="SH">Saint Helena</option>
                        <option value="KN">Saint Kitts and Nevis</option>
                        <option value="LC">Saint Lucia</option>
                        <option value="SX">Saint Martin (Dutch part)</option>
                        <option value="MF">Saint Martin (French part)</option>
                        <option value="PM">Saint Pierre and Miquelon</option>
                        <option value="VC">Saint Vincent and the Grenadines</option>
                        <option value="WS">Samoa</option>
                        <option value="SM">San Marino</option>
                        <option value="SA">Saudi Arabia</option>
                        <option value="SN">Senegal</option>
                        <option value="RS">Serbia</option>
                        <option value="SC">Seychelles</option>
                        <option value="SL">Sierra Leone</option>
                        <option value="SG">Singapore</option>
                        <option value="SK">Slovakia</option>
                        <option value="SI">Slovenia</option>
                        <option value="SB">Solomon Islands</option>
                        <option value="SO">Somalia</option>
                        <option value="ZA">South Africa</option>
                        <option value="GS">South Georgia/Sandwich Islands</option>
                        <option value="KR">South Korea</option>
                        <option value="SS">South Sudan</option>
                        <option value="ES">Spain</option>
                        <option value="LK">Sri Lanka</option>
                        <option value="SD">Sudan</option>
                        <option value="SR">Suriname</option>
                        <option value="SJ">Svalbard and Jan Mayen</option>
                        <option value="SZ">Swaziland</option>
                        <option value="SE">Sweden</option>
                        <option value="CH">Switzerland</option>
                        <option value="SY">Syria</option>
                        <option value="TW">Taiwan</option>
                        <option value="TJ">Tajikistan</option>
                        <option value="TZ">Tanzania</option>
                        <option value="TH">Thailand</option>
                        <option value="TL">Timor-Leste</option>
                        <option value="TG">Togo</option>
                        <option value="TK">Tokelau</option>
                        <option value="TO">Tonga</option>
                        <option value="TT">Trinidad and Tobago</option>
                        <option value="TN">Tunisia</option>
                        <option value="TR">Turkey</option>
                        <option value="TM">Turkmenistan</option>
                        <option value="TC">Turks and Caicos Islands</option>
                        <option value="TV">Tuvalu</option>
                        <option value="UG">Uganda</option>
                        <option value="UA">Ukraine</option>
                        <option value="AE">United Arab Emirates</option>
                        <option value="GB">United Kingdom (UK)</option>
                        <option value="US">United States (US)</option>
                        <option value="UM">United States (US) Minor Outlying Islands</option>
                        <option value="VI">United States (US) Virgin Islands</option>
                        <option value="UY">Uruguay</option>
                        <option value="UZ">Uzbekistan</option>
                        <option value="VU">Vanuatu</option>
                        <option value="VA">Vatican</option>
                        <option value="VE">Venezuela</option>
                        <option value="VN" selected="selected">Vietnam</option>
                        <option value="WF">Wallis and Futuna</option>
                        <option value="EH">Western Sahara</option>
                        <option value="YE">Yemen</option>
                        <option value="ZM">Zambia</option>
                        <option value="ZW">Zimbabwe</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group Orchid-form no-radius">
                      <label>Address *</label>
                      <input class="form-control" name="address" value="{{ old('address') }}" type="text">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group Orchid-form no-radius">
                      <label>Town / City *</label>
                      <input class="form-control" name="city" value="{{ old('city') }}" type="text">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <div class="woocommerce-account-fields">
                      <div class="checkbox">
                        <label>
                          <input name="account" value="{{ old('account') }}" type="checkbox"> Create an account?
                        </label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="woocommerce-checkout-review-order">
                  <h4>Your order</h4>

                  <p>Shipping = $2 + (Subtotal * 0,05)</p>
                  @if(Cart::count() > 0)
                    <table class="woocommerce-checkout-review-order-table">
                      <thead>
                        <tr>
                          <th class="product-name">Product</th>
                          <th class="product-total">Total</th>
                        </tr>
                      </thead>
                      <tbody>
                        @foreach(Cart::content() as $row)
                          <tr class="cart_item">
                            <td class="product-name">{{ $row->model->name }}
                              <span class="product-quantity">× {{ $row->qty }}</span>
                            </td>
                            <td class="product-total">
                              <span class="woocommerce-Price-amount amount">
                                <span class="woocommerce-Price-currencySymbol">$</span>{{ $row->model->price * $row->qty / 100 }}</span>
                            </td>
                          </tr>
                        @endforeach
                      </tbody>
                      <tfoot>
                        <tr class="cart-subtotal">
                          <th>Subtotal</th>
                          <td>
                            <strong>
                              <span class="woocommerce-Price-amount amount">
                                <span class="woocommerce-Price-currencySymbol">$</span>{{ Cart::subtotal() }}</span>
                            </strong>
                          </td>
                        </tr>
                        @if( session()->has('coupon') )
                          <tr>
                            <th>Discount({{ session()->get('coupon')['name'] }})</th>
                            <td data-title="Total"> 
                              <div class="fl">
                                <p style="color: green;">-${{ $discount }}</p>
                            </td>
                          </tr>
                        @endif
                        <tr class="cart-shipping">
                          <th>Shipping</th>
                          <td>
                            <strong>
                              <span class="woocommerce-Price-amount amount">
                                <span class="woocommerce-Price-currencySymbol"></span>${{ $shipping }}</span>
                            </strong>
                          </td>
                        </tr>
                        <tr class="order-total">
                          <th>Total</th>
                          <td>
                            <strong>
                              <span class="woocommerce-Price-amount amount">
                                <span class="woocommerce-Price-currencySymbol">$</span>{{ $total }}</span>
                            </strong>
                          </td>
                        </tr>
                      </tfoot>
                    </table>
                  @else
                    <h3>Product in cart not fount!</h3>
                  @endif
                </div>
                <div class="woocommerce-checkout-payment">
                  <div class="payment_method_cheque">
                    <div class="radio">
                      <label>
                        <input class="input-radio" id="payment_method_cheque" name="payment_method" value="cheque" checked="checked" type="radio">Check Payments
                        <div class="payment_box payment_method_cheque">
                          <p>Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                        </div>
                      </label>
                    </div>
                  </div>
                  <div class="payment_method_paypal">
                    <div class="radio">
                      <label>
                        <input class="input-radio" id="payment_method_paypal" name="payment_method" value="paypal" type="radio"> PayPal
                        <img src="images/icons/paypal-group-icon.png" alt="paypal">
                        <a href="#">What is Paypal? </a>
                        <div class="payment_box payment_method_cheque">
                          <p>Pay via PayPal; you can pay with your credit card if you don’t have a PayPal account.</p>
                        </div>
                      </label>
                    </div>
                  </div>
                  <div class="form-place-order">
                    <noscript>Since your browser does not support JavaScript, or it is disabled, please ensure you click the
                      <em>Update Totals</em> button before placing your order. You may be charged more than the amount stated above if you fail to do so.
                      <br>
                      <input class="button alt" type="submit" name="woocommerce_checkout_update_totals" value="Update totals">
                    </noscript>
                    <!-- <input class="place_order btn btn-brand pill" name="woocommerce_checkout_place_order" value="PLACE ORDER" data-value="Place order" type="submit"> -->
                  </div>

                  <div class="row">
                    <div class="col-md-6">
                      <p>4242 4242 4242 4242</p>

                        <div class="form-row">
                          <label for="card-element">
                            Credit or debit card
                          </label>
                          <div id="card-element">
                            <!-- A Stripe Element will be inserted here. -->
                          </div>

                          <!-- Used to display form errors. -->
                          <div id="card-errors" role="alert"></div>
                        </div>

                        <button class="place_order btn btn-brand pill" id="complete-order" type="submit">Submit Payment</button>
                        
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </section>
    </div>
  @endsection

  @section('extra-js')
    <script>
        (function(){
          // Create a Stripe client.
          var stripe = Stripe('{{ config('services.stripe.key') }}');

          // Create an instance of Elements.
          var elements = stripe.elements();

          // Custom styling can be passed to options when creating an Element.
          // (Note that this demo uses a wider set of styles than the guide below.)
          var style = {
            base: {
              color: '#32325d',
              lineHeight: '18px',
              fontFamily: '"Helvetica Neue", Helvetica, sans-serif',
              fontSmoothing: 'antialiased',
              fontSize: '16px',
              '::placeholder': {
                color: '#aab7c4'
              }
            },
            invalid: {
              color: '#fa755a',
              iconColor: '#fa755a'
            }
          };

          // Create an instance of the card Element.
          var card = elements.create('card', {
                style: style,
                hidePostalCode: true
            });
          // Add an instance of the card Element into the `card-element` <div>.
          card.mount('#card-element');

          // Handle real-time validation errors from the card Element.
          card.addEventListener('change', function(event) {
            var displayError = document.getElementById('card-errors');
            if (event.error) {
              displayError.textContent = event.error.message;
            } else {
              displayError.textContent = '';
            }
          });

          // Handle form submission.
          var form = document.getElementById('payment-form');
          form.addEventListener('submit', function(event) {
            event.preventDefault();

            // Disable the submit button to prevent repeated clicks
              document.getElementById('complete-order').disabled = true;

              
            stripe.createToken(card).then(function(result) {
              if (result.error) {
                // Inform the user if there was an error.
                var errorElement = document.getElementById('card-errors');
                errorElement.textContent = result.error.message;

                // Disable the submit button to prevent repeated clicks
              document.getElementById('complete-order').disabled = false;
              } else {
                // Send the token to your server.
                stripeTokenHandler(result.token);
              }
            });
          });

          // Кнопка 
          function stripeTokenHandler(token) {
            // Insert the token ID into the form so it gets submitted to the server
            var form = document.getElementById('payment-form');
            var hiddenInput = document.createElement('input');
            hiddenInput.setAttribute('type', 'hidden');
            hiddenInput.setAttribute('name', 'stripeToken');
            hiddenInput.setAttribute('value', token.id);
            form.appendChild(hiddenInput);

            // Submit the form
            form.submit();
          }

        })();
    </script>
  @endsection

