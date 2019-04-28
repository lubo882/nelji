<header class="site-header-1 site-header">
    <!-- Main bar start -->
    <div id="sticked-menu" class="main-bar">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <!-- logo begin -->
                    <div id="logo" class="pull-left">
                        <a href="index.html">
                            <img src="{{asset('images/logo.png')}}" alt="" class="logo">
                        </a>
                    </div>
                    <!-- logo close -->
                    <!-- btn-mobile menu begin -->
                    <a id="show-mobile-menu" class="btn-mobile-menu hidden-lg hidden-md"><i class="fa fa-bars"></i></a>
                    <!-- btn-mobile menu close -->

                    <!-- mobile menu begin -->
                    <nav id="mobile-menu" class="site-mobile-menu hidden-lg hidden-md">
                        <ul></ul>
                    </nav>
                    <!-- mobile menu close -->

                    <!-- desktop menu begin -->
                    <nav id="desktop-menu" class="site-desktop-menu hidden-xs hidden-sm">
                        <ul class="clearfix">
                            @foreach($cates as $cate)

                                <li><a href="{{$cate['url']}}">{{$cate['title']}}</a>



                                    @isset($cate['children'])
                                    <ul>

                                    @foreach($cate['children'] as $child)
                                            <li><a href="{{action('ArticleController@index', ['cid' => $child['id']])}}">{{$child['title']}}</a></li>
                                    @endforeach
                                    </ul>

                                    @endisset
                                </li>


                            @endforeach
                            {{--<li><a href="{{url('/index')}}">首页</a>--}}

                            {{--</li>--}}
                            {{--<li><a href="#">产品</a>--}}
                                {{--<ul>--}}
                                    {{--<li><a href="#">钢铁、有色金属加工</a></li>--}}
                                    {{--<li><a href="#">木材、纸品加工</a></li>--}}
                                    {{--<li><a href="#">建材、石材加工</a></li>--}}
                                    {{--<li><a href="#">新型、复合材料加工</a></li>--}}
                                {{--</ul>--}}
                            {{--</li>--}}
                            {{--<li><a href="#">服务</a>--}}
                                {{--<ul>--}}
                                    {{--<li><a href="#">技术支持</a></li>--}}
                                    {{--<li><a href="#">修磨服务</a></li>--}}
                                    {{--<li><a href="#">生产设备</a></li>--}}

                                {{--</ul>--}}
                            {{--</li>--}}
                            {{--<li><a href="#">新闻</a>--}}
                                {{--<ul>--}}
                                    {{--<li><a href="#">公司新闻</a></li>--}}
                                    {{--<li><a href="#">行业资讯</a></li>--}}
                                {{--</ul>--}}
                            {{--</li>--}}
                            {{--<li><a href="#">关于耐而捷</a>--}}
                                {{--<ul>--}}
                                    {{--<li><a href="contact1.html">企业简介</a></li>--}}
                                    {{--<li><a href="contact2.html">企业文化</a></li>--}}
                                    {{--<li><a href="contact3.html">荣誉证书</a></li>--}}
                                    {{--<li><a href="contact3.html">在线留言</a></li>--}}
                                    {{--<li><a href="contact3.html">联系我们</a></li>--}}
                                {{--</ul>--}}
                            {{--</li>--}}
                        </ul>
                    </nav>
                    <!-- desktop menu close -->

                    <!-- Header Group Button Right begin -->
                    <div class="header-buttons pull-right hidden-xs hidden-sm">

                        <div class="header-contact">
                            <ul class="clearfix">
                                <li class="phone"><i class="fa fa-phone"></i> <span>0571-86017022</span></li>
                                <li class="border-line">|</li>
                            </ul>
                        </div>

                        <!-- Button Modal popup searchbox -->
                        <div class="search-button">
                            <!-- Trigger the modal with a button -->
                            <a href="" data-toggle="modal" data-target="#myModal"><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <!-- Header Group Button Right close -->
                </div>
            </div>
        </div>
    </div>
</header>