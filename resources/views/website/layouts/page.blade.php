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

    @section('subheader')
        <section id="subheader" data-speed="8" data-type="background" class="padding-top-bottom subheader">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>Blog List</h1>
                        <ul class="breadcrumbs">
                            <li><a href="index.html">Home</a></li>
                            <b>/</b>
                            <li class="active">Blog List</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
    @show


    <!-- content begin -->
    <div id="content">

        <!-- section begin -->
        @section('content')
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <div class="blog-list">
                            <!-- post begin -->
                            <article>
                                <div class="post-media">
                                    <img alt="" src="images/news/2.jpg" class="img-responsive">
                                    <div class="post-date">
                                        <span class="date-day">22</span>
                                        <span class="date-month">May</span>
                                    </div>
                                </div>
                                <div class="post-content">
                                    <div class="post-title">
                                        <h5><a href="blog-single.html">Help You Get Amazing Theme</a></h5>
                                    </div>
                                    <div class="post-metadata">
                                        <span class="byline">
                                            <i class="fa fa-user"></i>
                                            <a href="#">AuThemes</a>
                                        </span>
                                        <span class="cat-links">
                                            <i class="fa fa-folder-open"></i>
                                            <a href="#">Markup</a>
                                        </span>
                                        <span class="comment-link">
                                            <i class="fa fa-comments-o"></i>
                                            <a href="#">29 comments</a>
                                        </span>
                                    </div>
                                    <div class="post-entry">
                                        <p>Nulla eleifend, sapien eget porttitor maximus, nisl ante convallis dolor, nec consequat felis ex a ex. Etiam vestibulum enim euismod dui vestibulum, vitae fringilla nibh consectetur. Integer at volutpat augue. Donec consectetur, est nec laoreet scelerisque, lacus nulla fermentum odio, ut accumsan enim ipsum a justo.</p>
                                        <p><a class="btn btn-border" href="blog-single.html">Read more</a></p>
                                    </div>
                                </div>
                            </article>
                            <!-- post close -->

                            <!-- post begin -->
                            <article>
                                <div class="post-media">
                                    <img alt="" src="images/news/3.jpg" class="img-responsive">
                                    <div class="post-date">
                                        <span class="date-day">19</span>
                                        <span class="date-month">May</span>
                                    </div>
                                </div>
                                <div class="post-content">
                                    <div class="post-title">
                                        <h5><a href="blog-single.html">Why Designers Need Marketing Skills</a></h5>
                                    </div>
                                    <div class="post-metadata">
                                        <span class="byline">
                                            <i class="fa fa-user"></i>
                                            <a href="#">AuThemes</a>
                                        </span>
                                        <span class="cat-links">
                                            <i class="fa fa-folder-open"></i>
                                            <a href="#">Markup</a>
                                        </span>
                                        <span class="comment-link">
                                            <i class="fa fa-comments-o"></i>
                                            <a href="#">29 comments</a>
                                        </span>
                                    </div>
                                    <div class="post-entry">
                                        <p>Nulla eleifend, sapien eget porttitor maximus, nisl ante convallis dolor, nec consequat felis ex a ex. Etiam vestibulum enim euismod dui vestibulum, vitae fringilla nibh consectetur. Integer at volutpat augue. Donec consectetur, est nec laoreet scelerisque, lacus nulla fermentum odio, ut accumsan enim ipsum a justo.</p>
                                        <p><a class="btn btn-border" href="blog-single.html">Read more</a></p>
                                    </div>
                                </div>
                            </article>
                            <!-- post close -->

                            <!-- post begin -->
                            <article>
                                <div class="post-media">
                                    <img alt="" src="images/news/4.jpg" class="img-responsive">
                                    <div class="post-date">
                                        <span class="date-day">18</span>
                                        <span class="date-month">May</span>
                                    </div>
                                </div>
                                <div class="post-content">
                                    <div class="post-title">
                                        <h5><a href="blog-single.html">10 Ways To Design For The Human Brain</a></h5>
                                    </div>
                                    <div class="post-metadata">
                                        <span class="byline">
                                            <i class="fa fa-user"></i>
                                            <a href="#">AuThemes</a>
                                        </span>
                                        <span class="cat-links">
                                            <i class="fa fa-folder-open"></i>
                                            <a href="#">Markup</a>
                                        </span>
                                        <span class="comment-link">
                                            <i class="fa fa-comments-o"></i>
                                            <a href="#">29 comments</a>
                                        </span>
                                    </div>
                                    <div class="post-entry">
                                        <p>Nulla eleifend, sapien eget porttitor maximus, nisl ante convallis dolor, nec consequat felis ex a ex. Etiam vestibulum enim euismod dui vestibulum, vitae fringilla nibh consectetur. Integer at volutpat augue. Donec consectetur, est nec laoreet scelerisque, lacus nulla fermentum odio, ut accumsan enim ipsum a justo.</p>
                                        <p><a class="btn btn-border" href="blog-single.html">Read more</a></p>
                                    </div>
                                </div>
                            </article>
                            <!-- post close -->

                            <!-- post begin -->
                            <article>
                                <div class="post-media">
                                    <img alt="" src="images/news/5.jpg" class="img-responsive">
                                    <div class="post-date">
                                        <span class="date-day">15</span>
                                        <span class="date-month">May</span>
                                    </div>
                                </div>
                                <div class="post-content">
                                    <div class="post-title">
                                        <h5><a href="blog-single.html">UX Design Trends For 2016</a></h5>
                                    </div>
                                    <div class="post-metadata">
                                        <span class="byline">
                                            <i class="fa fa-user"></i>
                                            <a href="#">AuThemes</a>
                                        </span>
                                        <span class="cat-links">
                                            <i class="fa fa-folder-open"></i>
                                            <a href="#">Markup</a>
                                        </span>
                                        <span class="comment-link">
                                            <i class="fa fa-comments-o"></i>
                                            <a href="#">29 comments</a>
                                        </span>
                                    </div>
                                    <div class="post-entry">
                                        <p>Nulla eleifend, sapien eget porttitor maximus, nisl ante convallis dolor, nec consequat felis ex a ex. Etiam vestibulum enim euismod dui vestibulum, vitae fringilla nibh consectetur. Integer at volutpat augue. Donec consectetur, est nec laoreet scelerisque, lacus nulla fermentum odio, ut accumsan enim ipsum a justo.</p>
                                        <p><a class="btn btn-border" href="blog-single.html">Read more</a></p>
                                    </div>
                                </div>
                            </article>
                            <!-- post close -->

                            <!-- post begin -->
                            <article>
                                <div class="post-media">
                                    <img alt="" src="images/news/6.jpg" class="img-responsive">
                                    <div class="post-date">
                                        <span class="date-day">12</span>
                                        <span class="date-month">May</span>
                                    </div>
                                </div>
                                <div class="post-content">
                                    <div class="post-title">
                                        <h5><a href="blog-single.html">Mobile UX And User Expectations</a></h5>
                                    </div>
                                    <div class="post-metadata">
                                        <span class="byline">
                                            <i class="fa fa-user"></i>
                                            <a href="#">AuThemes</a>
                                        </span>
                                        <span class="cat-links">
                                            <i class="fa fa-folder-open"></i>
                                            <a href="#">Markup</a>
                                        </span>
                                        <span class="comment-link">
                                            <i class="fa fa-comments-o"></i>
                                            <a href="#">29 comments</a>
                                        </span>
                                    </div>
                                    <div class="post-entry">
                                        <p>Nulla eleifend, sapien eget porttitor maximus, nisl ante convallis dolor, nec consequat felis ex a ex. Etiam vestibulum enim euismod dui vestibulum, vitae fringilla nibh consectetur. Integer at volutpat augue. Donec consectetur, est nec laoreet scelerisque, lacus nulla fermentum odio, ut accumsan enim ipsum a justo.</p>
                                        <p><a class="btn btn-border" href="blog-single.html">Read more</a></p>
                                    </div>
                                </div>
                            </article>
                            <!-- post close -->
                        </div>

                        <!-- pagination begin -->
                        <div class="pagination-ourter text-center">
                            <ul class="pagination">
                                <li><span class="page-numbers current">1</span></li>
                                <li><a class="page-numbers" href="#">2</a></li>
                                <li><a class="page-numbers" href="#">3</a></li>
                                <li><a class="page-numbers" href="#">4</a></li>
                                <li><a class="page-numbers" href="#">5</a></li>
                                <li><a class="page-numbers" href="#">...</a></li>
                                <li><a class="page-numbers" href="#">25</a></li>
                                <li><a class="next page-numbers" href="#"><i class="fa fa-angle-right"></i></a></li>
                            </ul>
                        </div>
                        <!-- pagination close -->
                    </div>
                    <div class="col-md-3">
                        <div class="main-sidebar">
                            <aside class="widget widget_text">
                                <h3 class="widget-title">About</h3>
                                <div class="tiny-border"></div>
                                <div class="textwidget">
                                    <p>Nulla eleifend, sapien eget porttitor maximus, nisl ante convallis dolor, nec consequat felis ex a ex. Etiam vestibulum enim euismod dui vestibulum, vitae fringilla nibh consectetur. Integer at volutpat augue. Donec consectetur, est nec laoreet scelerisque, lacus nulla fermentum odio, ut accumsan enim ipsum a justo.
                                    </p>
                                </div>
                            </aside>
                            <aside class="widget widget_search">
                                <form action="" class="search-form" method="get" role="search">
                                    <input type="search" name="s" value="" placeholder="Search …" class="search-field">
                                    <button class="search-submit" type="submit"><i class="fa fa-search"></i></button>
                                </form>
                            </aside>
                            <aside class="widget widget_categories">
                                <h3 class="widget-title">Categories</h3>
                                <div class="tiny-border"></div>
                                <ul>
                                    <li class="cat-item"><a href="#">Business Market</a> (5)</li>
                                    <li class="cat-item"><a href="#">Socials Network</a> (12)</li>
                                    <li class="cat-item"><a href="#">Team Work</a> (10)</li>
                                    <li class="cat-item"><a href="#">Product Services</a> (9)</li>
                                    <li class="cat-item"><a href="#">Socials Ecommerce</a> (6)</li>
                                </ul>
                            </aside>
                            <aside class="widget widget_text">
                                <div class="textwidget">
                                    <a href="#"><img src="images/news/ads.jpg" alt="" class="img-responsive"></a>
                                </div>
                            </aside>
                            <aside class="widget widget_tag_cloud">
                                <h3 class="widget-title">Tags</h3>
                                <div class="tiny-border"></div>
                                <div class="tagcloud">
                                    <a href="#">audio</a>
                                    <a href="#">gallery</a>
                                    <a href="#">image</a>
                                    <a href="#">music</a>
                                    <a href="#">photo</a>
                                    <a href="#">quote</a>
                                    <a href="#">text</a>
                                    <a href="#">video</a>
                                    <a href="#">vimeo</a>
                                    <a href="#">youtube</a>
                                </div>
                            </aside>
                            <aside class="widget widget_archive">
                                <h3 class="widget-title">Archives</h3>
                                <div class="tiny-border"></div>
                                <ul>
                                    <li><a href="#">September 2016</a> (14)</li>
                                    <li><a href="#">September 2015</a> (10)</li>
                                    <li><a href="#">January 2013</a> (5)</li>
                                    <li><a href="#">March 2012</a> (5)</li>
                                    <li><a href="#">January 2012</a> (6)</li>
                                    <li><a href="#">March 2011</a> (1)</li>
                                    <li><a href="#">October 2010</a> (1)</li>
                                </ul>
                            </aside>
                            <aside class="widget widget_meta">
                                <h3 class="widget-title">Meta</h3>
                                <div class="tiny-border"></div>
                                <ul>
                                    <li><a href="#">Site Admin</a></li>
                                    <li><a href="#">Log out</a></li>
                                    <li><a href="#">Entries <abbr>RSS</abbr></a></li>
                                    <li><a href="#">Comments <abbr>RSS</abbr></a></li>
                                    <li><a href="#">WordPress.org</a></li>
                                </ul>
                            </aside>
                        </div>
                    </div>
                </div>
            </div>

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
