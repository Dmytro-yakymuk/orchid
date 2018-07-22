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
        <div class="container">
          <div class="row blog-v reverse">
            <div class="col-md-12">
              <div class="post">
                <div class="img-wrapper js-set-bg-blog-thumb">
                  <img src="images/about/01.jpg" alt="blog-thumb">
                </div>
                <div class="desc">
                  <h3 class="title-about">Who We Are</h3>
                  <p class="sapo">We are a manufacturing base of Orchid food produced on our farm. We are a family health care production team, created by today's need for clean and safe food, driven by the desire to build meaningful and meaningful experiences. Vivamus
                    et enim accumsan, tempus dui non, pretium libero. Vivamus vitae justo non metus malesuada finibus. Pellentesque vehicula porttitor eleifend. Proin eget velit in arcu consectetur tempor. Sed pulvinar, purus sed efficitur elementum,
                    risus risus tincidunt massa, a iaculis risus turpis id sapien. Pellentesque a metus urna. Integer placerat et ante quis pharetra. Nulla facilisi. Donec egestas tortor non ante pulvinar, sit amet sollicitudin nisl auctor. Vestibulum
                    aliquet finibus consectetur. Nullam faucibus vehicula est nec pulvinar.</p>
                </div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="post">
                <div class="img-wrapper js-set-bg-blog-thumb">
                  <img src="images/about/02.jpg" alt="blog-thumb">
                </div>
                <div class="desc">
                  <h3 class="title-about">What We Do</h3>
                  <p class="sapo">We provide all kinds of Orchid products. Produced on our farm, the products are always fresh, multi-vitamins, rich variety for your family. With our Orchid food will bring delicious meals to your family.</p>
                  <p class="sapo">Vestibulum eu nisl vitae tortor feugiat aliquet finibus in libero. Vivamus et enim accumsan, tempus dui non, pretium libero. Vivamus vitae justo non metus malesuada finibus. Pellentesque vehicula porttitor eleifend. Proin eget velit
                    in arcu consectetur tempor. Sed pulvinar, purus sed efficitur elementum, risus risus tincidunt massa, a iaculis risus turpis id sapien diam pellentesque ullamcorper. </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section>
        <div class="counter-wrapper">
          <img class="rellax bg-overlay" src="images/call-to-action/4.jpg" alt="" />
          <div class="overlay-counter"></div>
          <div class="container">
            <div class="row">
              <div class="col-md-3 col-sm-6">
                <div class="couter-wrapper">
                  <p class="js-countup" data-count="154">0</p>
                  <span>HAPPY CLIENT</span>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="couter-wrapper">
                  <p class="js-countup" data-count="234">0</p>
                  <span>PRODUCTS IN STORE</span>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="couter-wrapper">
                  <p class="js-countup" data-count="32">0</p>
                  <span>YEAR OF EXPERIENCE</span>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="couter-wrapper">
                  <p class="js-countup" data-count="126">0</p>
                  <span>RUNING PROJECTS</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="boxed-sm">
        <div class="container">
          <div class="heading-wrapper text-center">
            <h3 class="heading">Our Team</h3>
          </div>
          <div class="team-wrapper">
            <div class="row">
              <div class="about-carousel">
                <div class="item">
                  <figure class="item-team">
                    <div class="img-wrapper">
                      <img class="img-responsive" src="images/team/01.jpg" alt="product thumbnail">
                    </div>
                    <figcaption class="desc text-center">
                      <h4 class="name">Billy Ray</h4>
                      <span class="position">Leader</span>
                    </figcaption>
                  </figure>
                </div>
                <div class="item">
                  <figure class="item-team">
                    <div class="img-wrapper">
                      <img class="img-responsive" src="images/team/02.jpg" alt="product thumbnail">
                    </div>
                    <figcaption class="desc text-center">
                      <h4 class="name">Danielle Reed</h4>
                      <span class="position">Farmer</span>
                    </figcaption>
                  </figure>
                </div>
                <div class="item">
                  <figure class="item-team">
                    <div class="img-wrapper">
                      <img class="img-responsive" src="images/team/03.jpg" alt="product thumbnail">
                    </div>
                    <figcaption class="desc text-center">
                      <h4 class="name">Peter Castro</h4>
                      <span class="position">Farmer</span>
                    </figcaption>
                  </figure>
                </div>
                <div class="item">
                  <figure class="item-team">
                    <div class="img-wrapper">
                      <img class="img-responsive" src="images/team/04.jpg" alt="product thumbnail">
                    </div>
                    <figcaption class="desc text-center">
                      <h4 class="name">Adam Carter</h4>
                      <span class="position">Leader</span>
                    </figcaption>
                  </figure>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>

@endsection