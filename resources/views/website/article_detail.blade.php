@extends('website.layouts.page')

@section('subheader')
    <section id="subheader" data-speed="8" data-type="background" class="padding-top-bottom subheader">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>{{$cateName}}</h1>

                    <ul class="breadcrumbs">
                        <li><a href="{{url('/')}}">首页</a></li>
                        <b>/</b>
                        <li>{{$cateName}}</li>
                        <b>/</b>
                        <li class="active">{{$article->title}}</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="blog-single">
                    <!-- post begin -->
                    <article>
                        <div class="post-media">
                        </div>
                        <div class="post-content">
                            <div class="post-title">
                                <h1>{{$article->title}}</h1>
                            </div>
                            <div class="post-metadata">
                                        <span class="posted-on">
                                            <i class="fa fa-clock-o"></i>
                                            {{$article->created_at}}
                                        </span>
                                        <span class="comment-link">
                                            <i class="fa fa-comments-o"></i>
                                            <a href="#">0 comments</a>
                                        </span>
                            </div>
                            <div class="hr"></div>
                            <div class="post-entry">
                                <p>{{$article->content}}</p>
                            </div>
                            <div class="clearfix"></div>

                            <div class="comments-area" id="comments">
                                <ol class="comment-list">
                                    <li class="comment even thread-even depth-1" id="comment-5">
                                        {{--<article class="comment-body">--}}
                                            {{--<footer class="comment-meta">--}}
                                                {{--<div class="comment-author vcard">--}}
                                                    {{--<img class="avatar" src="images/news/avatar/3.png" alt="">--}}
                                                    {{--<b class="fn"><a class="url" href="#">John Doe</a></b>--}}
                                                    {{--<span class="says">says:</span>--}}
                                                {{--</div><!-- .comment-author -->--}}
                                                {{--<div class="comment-metadata">--}}
                                                    {{--<a href="#">--}}
                                                        {{--<time>--}}
                                                            {{--09/03/2016 at 10:18 am--}}
                                                        {{--</time>--}}
                                                    {{--</a>--}}
                                                {{--</div><!-- .comment-metadata -->--}}
                                            {{--</footer><!-- .comment-meta -->--}}

                                            {{--<div class="comment-content">--}}
                                                {{--<p>Nunc risus ex, tempus quis purus ac, tempor consequat ex. Vivamus sem magna, maximus at est id, maximus aliquet nunc. Suspendisse lacinia velit a eros porttitor, in interdum ante faucibus.</p>--}}
                                            {{--</div><!-- .comment-content -->--}}

                                            {{--<div class="reply">--}}
                                                {{--<a href="#" class="comment-reply-link" rel="nofollow">Reply</a>--}}
                                            {{--</div>--}}
                                        {{--</article><!-- .comment-body -->--}}
                                    </li>
                                </ol>
                                <div class="comment-respond" id="respond">
                                    <h2 class="comment-reply-title" id="reply-title">Leave a Reply</h2>

                                    <form class="comment-form" id="commentform" method="post" action="">
                                        <p class="comment-notes">You must be logged in to post a comment.</p>

                                        <p class="comment-form-author">
                                            <input type="text" placeholder="Name*" size="30" value="" name="author" id="author">
                                        </p>

                                        <p class="comment-form-email">
                                            <input type="email"  placeholder="Email*" size="30" value="" name="email" id="email">
                                        </p>

                                        <p class="comment-form-comment">
                                            <textarea rows="8" cols="45" placeholder="至少3个字" name="comment" id="comment"></textarea>
                                        </p>

                                        <p class="form-submit">
                                            <input type="submit" value="发表评论" class="submit" id="submit" name="submit">
                                        </p>
                                    </form>
                                </div><!-- #respond -->
                            </div>
                        </div>
                    </article>
                    <!-- post close -->
                </div>


            </div>
        </div>
    </div>

@endsection