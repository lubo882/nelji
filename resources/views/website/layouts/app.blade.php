<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <title>耐而捷</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="{{asset('images/favicon.png')}}" type="image/x-icon">
    <link href="{{asset('style.css')}}" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="{{asset('switcher/demo.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('switcher/colors/blue.css')}}" type="text/css" id="colors">
</head>
<body>
<!-- Preload images start //-->
<div class="images-preloader" id="images-preloader">
    <div class="spinner">
        <div class="bounce1"></div>
        <div class="bounce2"></div>
        <div class="bounce3"></div>
    </div>
</div>
<!-- Preload images end //-->
<div id="wrapper">
    <!-- header begin -->
    @include('website.layouts.header')
    <div class="gray-line"></div>

    <!-- Modal Search begin -->
    <div id="myModal" class="modal fade" role="dialog">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <div class="modal-dialog myModal-search">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-body">
                    <form role="search" method="get" class="search-form" action="">
                        <input type="search" class="search-field" placeholder="Search here..." value="" title="" />
                        <button type="submit" class="search-submit"><i class="fa fa-search"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- slider -->
    @include('website.layouts.slider')
            <!-- slider close -->

    <div class="clearfix"></div>

    <!-- content begin -->
    <div id="content" class="no-padding">

        <!-- section begin -->
        @section('content')
        <section id="section-about">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-3">
                        <img src="{{asset('images/about/we-are-thumb.jpg')}}" alt="about image" class="img-responsive">
                    </div>
                    <div class="col-md-5 col-sm-5">
                        <div class="about-box">
                            <h2 class="box-title">We are Compact</h2>
                            <div class="tiny-border"></div>
                            <p>Morbi vehicula a nibh in commodo. Aliquam quis dolor eget lectus pulvinar malesuada. Suspendisse eu rhoncus ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra,</p>
                            <ul class="list-style-1">
                                <li>Donec malesuada urna porta tellus feugiat</li>
                                <li>Nullam consequat lacus non luctus finibus.</li>
                                <li>Interdum et malesuada fames ac ante</li>
                                <li>Nam justo ipsum, sagittis sed hendrerit ac</li>
                            </ul>
                            <div class="divider-single"></div>
                            <a href="#" class="btn btn-primary btn-small">Get Started</a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="feature-box">
                            <h2 class="box-title">Our Features</h2>
                            <div class="tiny-border"></div>
                            <div class="feature">
                                <i class="fa fa-bar-chart"></i>
                                <h3>Mobile Ready</h3>
                                <p>Fusce at accumsan justo. Nulla lacus efficitur vel aliquam sed, fringilla sit amet neque.</p>
                            </div>
                            <div class="feature">
                                <i class="fa fa-diamond"></i>
                                <h3>Very Easy Customizie</h3>
                                <p>Donec malesuada urna porta tellus feugiat, ac tempor tortor ornare.</p>
                            </div>
                            <div class="feature no-margin-bottom">
                                <i class="fa fa-bullhorn"></i>
                                <h3>Free Icon Font Awesome</h3>
                                <p>Etiam eget neque lorem. Interdum et malesuada fames ac ante ipsum primis faucibus.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- section close -->

        <!-- section begin -->
        <section id="section-project" class="no-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="latest-projects clearfix">
                            <div class="latest-projects-intro">
                                <h2 class="box-title">产品展示</h2>
                                <div class="tiny-border-light"></div>
                                <p>木用、裁板锯、胶合板、铝、刨花板、竹胶板等等</p>
                            </div>
                            <div class="latest-projects-wrapper">
                                <div id="latest-projects-items" class="latest-projects-items">
                                    <div class="item">
                                        <img src="{{asset('images/goods/g1.jpg')}}" alt="" class="img-responsive">
                                        <div class="project-details">
                                            <p class="folio-title"><a href="#">Plan For Your Bussiness</a></p>
                                            <p class="folio-cate"><i class="fa fa-tag"></i><a href="#">Finance</a>, <a href="#">Marketing</a></p>
                                            <div class="folio-buttons">
                                                <a href="{{asset('images/projects/medium-1.jpg')}}" title="Plan For Your Bussiness" class="folio"><i class="fa fa-search"></i></a>
                                                <a href="#"><i class="fa fa-link"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <img src="{{asset('images/goods/g2.jpg')}}" alt="" class="img-responsive">
                                        <div class="project-details">
                                            <p class="folio-title"><a href="#">Business Growth Solutions</a></p>
                                            <p class="folio-cate"><i class="fa fa-tag"></i><a href="#">Finance</a>, <a href="#">Marketing</a></p>
                                            <div class="folio-buttons">
                                                <a href="{{asset('images/projects/medium-2.jpg')}}" title="Business Growth Solutions" class="folio"><i class="fa fa-search"></i></a>
                                                <a href="#"><i class="fa fa-link"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <img src="{{asset('images/goods/g3.jpg')}}" alt="" class="img-responsive">
                                        <div class="project-details">
                                            <p class="folio-title"><a href="#">Enterprise Development</a></p>
                                            <p class="folio-cate"><i class="fa fa-tag"></i><a href="#">Finance</a>, <a href="#">Marketing</a></p>
                                            <div class="folio-buttons">
                                                <a href="{{asset('images/projects/medium-3.jpg')}}" title="Enterprise Development" class="folio"><i class="fa fa-search"></i></a>
                                                <a href="#"><i class="fa fa-link"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <img src="{{asset('images/goods/g4.jpg')}}" alt="" class="img-responsive">
                                        <div class="project-details">
                                            <p class="folio-title"><a href="#">Successful Business</a></p>
                                            <p class="folio-cate"><i class="fa fa-tag"></i><a href="#">Finance</a>, <a href="#">Marketing</a></p>
                                            <div class="folio-buttons">
                                                <a href="{{asset('images/projects/medium-4.jpg')}}" title="Successful Business" class="folio"><i class="fa fa-search"></i></a>
                                                <a href="#"><i class="fa fa-link"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <img src="{{asset('images/goods/g5.jpg')}}" alt="" class="img-responsive">
                                        <div class="project-details">
                                            <p class="folio-title"><a href="#">Marketing Strategy</a></p>
                                            <p class="folio-cate"><i class="fa fa-tag"></i><a href="#">Finance</a>, <a href="#">Marketing</a></p>
                                            <div class="folio-buttons">
                                                <a href="{{asset('images/projects/medium-5.jpg')}}" title="Marketing Strategy" class="folio"><i class="fa fa-search"></i></a>
                                                <a href="#"><i class="fa fa-link"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- section close -->

        <!-- section begin -->
        <section id="section-news">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="latest-blog-posts">
                            <h2 class="box-title">Latest blog Posts</h2>
                            <div class="compact-buttons">
                                <div class="latest-prev compact-prev"><i class="fa fa-angle-left"></i></div>
                                <div class="latest-next compact-next"><i class="fa fa-angle-right"></i></div>
                            </div>
                            <div class="tiny-border"></div>
                            <div class="latest-news-items">
                                <div class="item">
                                    <div class="latest-blog-post-img">
                                        <img src="{{asset('images/news/thumb/thumb-1.jpg')}}" alt="image name">
                                        <div class="latest-blog-post-date">
                                            06 <span>May</span>
                                        </div>
                                    </div>
                                    <div class="latest-blog-post-details">
                                        <p class="title"><a href="#">Help your business to success</a></p>
                                        <p>Morbi vehicula a nibh in commodo. Aliquam quis dolor eget lectus pulvinar eu rhoncus ligula. Ut leo mauris, molestie imperdiet consequat in, varius ac sapien.</p>
                                        <div class="latest-blog-post-data">
                                            <span class="tags"><i class="fa fa-tags"></i> <a href="#">Development,</a> <a href="#">Maketing</a></span>
                                            <span class="btn-read"><a href="#"><i class="fa fa-plus-square"></i> Read more</a></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="latest-blog-post-img">
                                        <img src="{{asset('images/news/thumb/thumb-2.jpg')}}" alt="image name">
                                        <div class="latest-blog-post-date">
                                            02 <span>May</span>
                                        </div>
                                    </div>
                                    <div class="latest-blog-post-details">
                                        <p class="title"><a href="#">Manage for collective creativity</a></p>
                                        <p>Morbi vehicula a nibh in commodo. Aliquam quis dolor eget lectus pulvinar eu rhoncus ligula. Ut leo mauris, molestie imperdiet consequat in, varius ac sapien.</p>
                                        <div class="latest-blog-post-data">
                                            <span class="tags"><i class="fa fa-tags"></i> <a href="#">Development,</a> <a href="#">Maketing</a></span>
                                            <span class="btn-read"><a href="#"><i class="fa fa-plus-square"></i> Read more</a></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="latest-blog-post-img">
                                        <img src="{{asset('images/news/thumb/thumb-3.jpg')}}" alt="image name">
                                        <div class="latest-blog-post-date">
                                            22 <span>Mar</span>
                                        </div>
                                    </div>
                                    <div class="latest-blog-post-details">
                                        <p class="title"><a href="#">Why Designers Need Marketing Skills</a></p>
                                        <p>Morbi vehicula a nibh in commodo. Aliquam quis dolor eget lectus pulvinar eu rhoncus ligula. Ut leo mauris, molestie imperdiet consequat in, varius ac sapien.</p>
                                        <div class="latest-blog-post-data">
                                            <span class="tags"><i class="fa fa-tags"></i> <a href="#">Development,</a> <a href="#">Maketing</a></span>
                                            <span class="btn-read"><a href="#"><i class="fa fa-plus-square"></i> Read more</a></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="latest-blog-post-img">
                                        <img src="{{asset('images/news/thumb/thumb-4.jpg')}}" alt="image name">
                                        <div class="latest-blog-post-date">
                                            18 <span>Mar</span>
                                        </div>
                                    </div>
                                    <div class="latest-blog-post-details">
                                        <p class="title"><a href="#">10 Ways To Design For The Human Brain</a></p>
                                        <p>Morbi vehicula a nibh in commodo. Aliquam quis dolor eget lectus pulvinar eu rhoncus ligula. Ut leo mauris, molestie imperdiet consequat in, varius ac sapien.</p>
                                        <div class="latest-blog-post-data">
                                            <span class="tags"><i class="fa fa-tags"></i> <a href="#">Development,</a> <a href="#">Maketing</a></span>
                                            <span class="btn-read"><a href="#"><i class="fa fa-plus-square"></i> Read more</a></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="latest-blog-post-img">
                                        <img src="{{asset('images/news/thumb/thumb-5.jpg')}}" alt="image name">
                                        <div class="latest-blog-post-date">
                                            08 <span>Feb</span>
                                        </div>
                                    </div>
                                    <div class="latest-blog-post-details">
                                        <p class="title"><a href="#">UX Design Trends For 2016</a></p>
                                        <p>Morbi vehicula a nibh in commodo. Aliquam quis dolor eget lectus pulvinar eu rhoncus ligula. Ut leo mauris, molestie imperdiet consequat in, varius ac sapien.</p>
                                        <div class="latest-blog-post-data">
                                            <span class="tags"><i class="fa fa-tags"></i> <a href="#">Development,</a> <a href="#">Maketing</a></span>
                                            <span class="btn-read"><a href="#"><i class="fa fa-plus-square"></i> Read more</a></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="latest-blog-post-img">
                                        <img src="{{asset('images/news/thumb/thumb-6.jpg')}}" alt="image name">
                                        <div class="latest-blog-post-date">
                                            06 <span>Feb</span>
                                        </div>
                                    </div>
                                    <div class="latest-blog-post-details">
                                        <p class="title"><a href="#">Mobile UX And User Expectations</a></p>
                                        <p>Morbi vehicula a nibh in commodo. Aliquam quis dolor eget lectus pulvinar eu rhoncus ligula. Ut leo mauris, molestie imperdiet consequat in, varius ac sapien.</p>
                                        <div class="latest-blog-post-data">
                                            <span class="tags"><i class="fa fa-tags"></i> <a href="#">Development,</a> <a href="#">Maketing</a></span>
                                            <span class="btn-read"><a href="#"><i class="fa fa-plus-square"></i> Read more</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="testimonials-slider-wrapper">
                            <h2 class="box-title">Testimonials</h2>
                            <div class="compact-buttons">
                                <div class="testi-prev compact-prev"><i class="fa fa-angle-left"></i></div>
                                <div class="testi-next compact-next"><i class="fa fa-angle-right"></i></div>
                            </div>
                            <div class="tiny-border"></div>
                            <div class="testimonials-slider">
                                <div class="item">
                                    <div class="testi-boxes">
                                        <blockquote>
                                            Morbi auctor vel mauris facilisis lacinia. Aenean suscipit lorem leo, et hendrerit odio fermentum et. Donec ac dolor eros. Mauris arcu nunc, iaculis sit amet lacus iaculis, faucibus faucibus nunc. Vestibulum sit amet lacinia massa
                                        </blockquote>
                                        <div class="testi-info clearfix">
                                            <img alt="" src="{{asset('images/testimonial/thumb-1.png')}}" class="img-circle">
                                            <div class="testi-details">
                                                <span>Cheryl Cruz</span>
                                                Maketing Manager
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="testi-boxes">
                                        <blockquote>
                                            Morbi auctor vel mauris facilisis lacinia. Aenean suscipit lorem leo, et hendrerit odio fermentum et. Donec ac dolor eros. Mauris arcu nunc, iaculis sit amet lacus iaculis, faucibus faucibus nunc. Vestibulum sit amet lacinia massa
                                        </blockquote>
                                        <div class=" testi-info clearfix">
                                            <img alt="" src="{{asset('images/testimonial/thumb-2.png')}}" class="img-circle">
                                            <div class="testi-details">
                                                <span>John Walker</span>
                                                Developent
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="testi-boxes">
                                        <blockquote>
                                            Morbi auctor vel mauris facilisis lacinia. Aenean suscipit lorem leo, et hendrerit odio fermentum et. Donec ac dolor eros. Mauris arcu nunc, iaculis sit amet lacus iaculis, faucibus faucibus nunc. Vestibulum sit amet lacinia massa
                                        </blockquote>
                                        <div class="testi-info clearfix">
                                            <img alt="" src="{{asset('images/testimonial/thumb-3.png')}}" class="img-circle">
                                            <div class="testi-details">
                                                <span>Frank Furius</span>
                                                Art Director
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- section close -->

        <!-- section begin -->
        <section id="section-cta">
            <div class="sep-background-mask"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="cal-to-action text-center">
                            <span>我们的规格齐全，超过 <b>1000+</b> 支持定制多片锯,铝型材等  期待与您的合作</span>
                            <a href="#" class="btn btn-border-light">Contact Us</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- section close -->
        @show
    </div>
    <!-- content close -->
    <!-- footer begin -->
    @include('website.layouts.footer')
            <!-- footer close -->
</div>
<a id="to-the-top" ><i class="fa fa-angle-up"></i></a>
<!-- LOAD JS FILES -->
<script src="{{asset('js/jquery.min.js')}}"></script>
<script src="{{asset('js/bootstrap.min.js')}}"></script>
<script src="{{asset('js/imagesloaded.pkgd.min.js')}}"></script>
<script src="{{asset('js/easing.js')}}"></script>
<script src="{{asset('js/owl.carousel.js')}}"></script>
<script src="{{asset('js/jquery.fitvids.js')}}"></script>
<script src="{{asset('js/wow.min.js')}}"></script>
<script src="{{asset('js/jquery.magnific-popup.min.js')}}"></script>

<!-- Waypoints-->
<script src="{{asset('js/jquery.waypoints.min.js')}}"></script>
<script src="{{asset('js/sticky.min.js')}}"></script>
<script src="{{asset('js/tipper.js')}}"></script>
<script src="{{asset('js/compact.js')}}"></script>
<script src="{{asset('js/custom-index1.js')}}"></script>

<!-- SLIDER REVOLUTION SCRIPTS  -->
<script type="text/javascript" src="{{asset('rs-plugin/js/jquery.themepunch.plugins.min.js')}}"></script>
<script type="text/javascript" src="{{asset('rs-plugin/js/jquery.themepunch.revolution.min.js')}}"></script>
<script src="{{asset('js/revslider-custom.js')}}"></script>



</body>
</html>
