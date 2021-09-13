@extends('layouts.app')
@section('content')
    <h5>Sākumlapa \ Ātrie kredīti </h5>

        <div class="row">
            <div class="col-lg-4 col-md-2"></div>
            <div class="col-lg-8 col-md-2">
    <h3> Ātrie kredīti ar pieteikumu internetā </h3>
            </div>
        </div>

    @if(count($posts) > 0)
        @foreach($posts as $post)
            <div class="well">

                {!! Form::close() !!}

                    <div class="row">



                            <div class="col-lg-2 col-md-6">

                                <img style="width:100%" src="storage/cover_images/{{$post->cover_image}}">
                            </div>

                            <div class="col-lg-2 col-md-6">
                                 {{$post->first_credit}}<br>
                                Pirmais kredīts
                            </div>

                            <div class="col-lg-2 col-md-6">
                                {{$post->sum}}<br>
                                Summa
                            </div>

                            <div class="col-lg-2 col-md-6">
                                {{$post->age}}<br>
                                Vecums
                            </div>

                            <div class="col-lg-2 col-md-6">
                               {{$post->term}}<br>
                                Termiņš
                            </div>

                            <div class="col-lg-2 col-md-6">

                             {{Form::submit('Saņemt',['class' => 'btn btn-primary'])}}
                                {!! Form::close() !!}

                            </div>


            </div>

                <div class="row" >
                <br/>

                    <p class="text-justify">{!!$post->body!!}</p>
 <span class="inline-flex items-center justify-center px-2 py-1 mr-2 text-xs font-bold leading-none text-red-100 bg-red-600 rounded-full">  {{$post->extra}}</span>
                </div>

            </div>

        @endforeach
    @else
    <p>No Posts found</p>
    @endif
@endsection
