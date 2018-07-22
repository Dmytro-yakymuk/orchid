@extends('layouts.layout')
  @section('content')
  <div class="blog-layout-2" id="page">
    @include('menu_phone')
    <header class="header-style-1 static">
      {{ menu('main', 'menus.main') }}
    </header>
      <section class="sub-header shop-layout-1">
        <img class="rellax bg-overlay" src="images/sub-header/03.jpg" alt="">
        <div class="overlay-call-to-action"></div>
        <h3 class="heading-style-3">Blog</h3>
      </section>
      <section class="boxed-sm">
        <div class="container">
          <div class="row main">
            <div class="col-md-3">
              <div class="sidebar">
                <div class="widget widget-search">
                  <form class="Orchid-form form-inline btn-add-on border no-radius">
                    <div class="form-group">
                      <input class="form-control" placeholder="Search..." type="text">
                      <button class="btn btn-brand" type="submit">
                        <i class="fa fa-search"></i>
                      </button>
                    </div>
                  </form>
                </div>
                <div class="widget widget-blog-post">
                  <h4 class="title text-center">Recent Post</h4>
                  <ul class="list-blog">
                    <li>
                      <a href="blog-detail.html">
                        <div class="img-wrapper">
                          <img src="images/blog/thumb-01.jpg" alt="product">
                        </div>
                        <div class="desc">
                          <h5 class="title">Growing Your...</h5>
                          <p class="meta-time">January 02, 2017</p>
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="blog-detail.html">
                        <div class="img-wrapper">
                          <img src="images/blog/thumb-02.jpg" alt="product">
                        </div>
                        <div class="desc">
                          <h5 class="title">Food Heaven...</h5>
                          <p class="meta-time">December 23, 2016</p>
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="blog-detail.html">
                        <div class="img-wrapper">
                          <img src="images/blog/thumb-03.jpg" alt="product">
                        </div>
                        <div class="desc">
                          <h5 class="title">The Nutrition...</h5>
                          <p class="meta-time">December 11, 2016</p>
                        </div>
                      </a>
                    </li>
                  </ul>
                </div>
                <div class="widget widget-categories">
                  <h4 class="title-widget text-center">Categories</h4>
                  <ul>
                    <li>
                      <a href="shop.html">Vegatable
                        <span>(5)</span>
                      </a>
                    </li>
                    <li>
                      <a href="shop.html">Meat
                        <span>(7)</span>
                      </a>
                    </li>
                    <li>
                      <a href="shop.html">Fruits
                        <span>(9)</span>
                      </a>
                    </li>
                    <li>
                      <a href="shop.html">Bestseller
                        <span>(10)</span>
                      </a>
                    </li>
                    <li>
                      <a href="shop.html">Orchid Food
                        <span>(6)</span>
                      </a>
                    </li>
                    <li>
                      <a href="shop.html">Healthy Benefit
                        <span>(5)</span>
                      </a>
                    </li>
                  </ul>
                </div>
                <div class="widget widget-categories">
                  <h4 class="title-widget text-center">Archives</h4>
                  <ul>
                    <li>
                      <a href="shop.html">March 2017
                        <span>(5)</span>
                      </a>
                    </li>
                    <li>
                      <a href="shop.html">Feberuary 2017
                        <span>(7)</span>
                      </a>
                    </li>
                    <li>
                      <a href="shop.html">January 2017
                        <span>(9)</span>
                      </a>
                    </li>
                    <li>
                      <a href="shop.html">December 2016
                        <span>(10)</span>
                      </a>
                    </li>
                    <li>
                      <a href="shop.html">November 2016
                        <span>(6)</span>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col-md-9">
              <div class="row blog-h-full-width">
                <div class="col-md-12">
                  <div class="post">
                    <div class="img-wrapper">
                      <a href="blog-detail.html">
                        <img src="images/blog/012.jpg" alt="Image" />
                      </a>
                    </div>
                    <div class="desc">
                      <h3>
                        <a href="blog-detail.html">Beauty With Orchid Products</a>
                      </h3>
                      <p class="meta">
                        <span class="time">Feberuary 05, 2017</span>
                        <span class="comment">2</span>
                      </p>
                      <p class="sapo">Etiam at varius diam, id blandit erat. Suspendisse eget volutpat risus, id venenatis justo. Fusce elementum ligula elit. Duis ultricies ultrices nibh, a tincidunt risus pretium eleifend... </p>
                      <a class="read-more" href="blog-detail.html">READ MORE
                        <i class="fa fa-long-arrow-right"></i>
                      </a>
                    </div>
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="post">
                    <div class="img-wrapper">
                      <a href="blog-detail.html">
                        <img src="images/blog/013.jpg" alt="Image" />
                      </a>
                    </div>
                    <div class="desc">
                      <h3>
                        <a href="blog-detail.html">Green Vegetables Are Good For Healthy</a>
                      </h3>
                      <p class="meta">
                        <span class="time">January 30, 2017</span>
                        <span class="comment">0</span>
                      </p>
                      <p class="sapo">Vivamus consectetur nulla mattis lorem ultricies, ac congue tellus consectetur. Vivamus sed purus volutpat, varius mauris id, tempus augue. Nuefd ans congue liquam dunm aim comd oakd...</p>
                      <a class="read-more" href="blog-detail.html">READ MORE
                        <i class="fa fa-long-arrow-right"></i>
                      </a>
                    </div>
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="post">
                    <div class="img-wrapper">
                      <a href="blog-detail.html">
                        <img src="images/blog/014.jpg" alt="Image" />
                      </a>
                    </div>
                    <div class="desc">
                      <h3>
                        <a href="blog-detail.html">Refreshing Green Smoothie Recipe</a>
                      </h3>
                      <p class="meta">
                        <span class="time">January 20, 2017</span>
                        <span class="comment">4</span>
                      </p>
                      <p class="sapo">Praesent efficitur felis eu luctus vestibulum. In hac habitasse platea dictumst. Nam egestas eu nisl ac pellentesque. Duis congue suscipit lorem vel congue. </p>
                      <a class="read-more" href="blog-detail.html">READ MORE
                        <i class="fa fa-long-arrow-right"></i>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-12 text-right">
                  <nav>
                    <ul class="pagination pagination-style-2">
                      <li>
                        <a class="prev page-numbers" href="#">
                          <i class="fa fa-long-arrow-left"></i>
                        </a>
                      </li>
                      <li>
                        <a class="page-numbers" href="#">3</a>
                      </li>
                      <li>
                        <a class="page-numbers" href="#">4</a>
                      </li>
                      <li>
                        <span class="page-numbers current">5</span>
                      </li>
                      <li>
                        <a class="next page-numbers" href="#">
                          <i class="fa fa-long-arrow-right"></i>
                        </a>
                      </li>
                    </ul>
                  </nav>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
@endsection