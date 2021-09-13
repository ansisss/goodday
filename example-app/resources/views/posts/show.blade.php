@extends('layouts.app')
@section('content')
    <a href="/goodday/example-app/public/posts" class="btn btn-default">Go Back</a>
    <h1>{{$post->title}}</h1>
    <img style="width:100%" src="/goodday/example-app/public/storage/cover_images/{{$post->cover_image}}">
    <div>
        {!! $post->body !!}
    </div>
    @if(!Auth::guest())

    <a href="/goodday/example-app/public/posts/{{$post->id}}/edit" class="btn btn-default">Edit</a>

    {!! Form::open(['action' => ['App\Http\Controllers\PostsController@destroy', $post->id],'method' => 'POST', 'class' => 'pull-right']) !!}
    {{Form::hidden('_method', 'DELETE')}}
    {{Form::submit('Delete',['class' => 'btn btn-danger'])}}
    {!! Form::close() !!}
@endif
@endsection
