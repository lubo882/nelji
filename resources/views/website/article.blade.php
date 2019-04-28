@extends('website.layouts.page')

@section('subheader')
    <section id="subheader" data-speed="8" data-type="background" class="padding-top-bottom subheader">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>{{$cateName}}</h1>

                </div>
            </div>
        </div>
    </section>
@endsection

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="blog-list">
                    @foreach($articles as $article)
                    <!-- post begin -->
                    <article>

                        <div class="post-content" style="padding-left:0;">
                            <div class="post-title">
                                <h2><a href="{{url('/articles/'.$article->id)}}">{{$article->title}}</a></h2>
                            </div>
                            <div class="post-metadata">
                                <span class="comment-link">
                                    <i class="fa fa-comments-o"></i>
                                    <a href="#">0 comments</a>
                                </span>
                            </div>
                            <div class="post-entry">
                                <p>{{$article->content}}</p>
                            </div>
                        </div>
                    </article>
                    <!-- post close -->
                    @endforeach

                </div>
        </div>
    </div>


@endsection