@extends('layouts.app')
@section('content')
    <h1>Izveidot reklāmu</h1>
    {!! Form::open(['action' => 'App\Http\Controllers\PostsController@store', 'method' => 'POST', 'enctype' => 'multipart/form-data',  'class' => 'form']) !!}
    <div class="row">
        <div class="col-lg-6 col-md-2">
            <div class="form-group">
                {{Form::label('title', 'Nosaukums')}}
                {{Form::text('title', '', ['class' => 'form-control', 'placeholder' => 'Title'])}}
            </div>
             <div class="form-group">
                 {{Form::label('first_credit', 'Pirmā kredīta summa')}}
                 {{Form::text('first_credit', '', ['class' => 'form-control', 'placeholder' => 'Firsts_credit'])}}
             </div>

            <div class="form-group">
                {{Form::label('sum', 'Kredīta summa')}}
                {{Form::text('sum', '', ['class' => 'form-control', 'placeholder' => 'Sum'])}}
            </div>
        </div>
            <div class="col-lg-6 col-md-2">
            <div class="form-group">
                {{Form::label('age', 'Vecums')}}
                {{Form::text('age', '', ['class' => 'form-control', 'placeholder' => 'Age'])}}
            </div>
                <div class="form-group">
                {{Form::label('term', 'Termiņš')}}
                {{Form::text('term', '', ['class' => 'form-control', 'placeholder' => 'Term'])}}
            </div>
                <div class="form-group">
                    {{Form::label('extra', 'Papildus atlaides')}}
                    {{Form::text('extra', '', ['class' => 'form-control', 'placeholder' => 'Extra'])}}
                </div>
            </div>
    </div>

    <div class="row">
        <div class="col-lg-4 col-md-3">
            <input type="hidden" name="quickLoans" value="Q">
            <input type="checkbox" name="quickLoans" value="quickLoans"> Ātrie kredīti
        </div>
        <div class="col-lg-4 col-md-3">
            <input type="hidden" name="lineOfCredit" value="Q">
            <input type="checkbox" name="lineOfCredit" value="lineOfCredit"> Kredītlīnija
        </div>
        <div class="col-lg-4 col-md-3">
            <input type="hidden" name="consumerCredit" value="Q">
            <input type="checkbox" name="consumerCredit" value="consumerCredit"> Patēriņa kredīti
        </div>
    </div>

            <div class="form-group">
                {{Form::label('body', 'Kredīta apraksts')}}
                {{Form::textarea('body', '', ['id' => 'article-ckeditor','class' => 'form-control', 'placeholder' => 'Body text'])}}
            </div>
            <div class="'form-group">
                {{Form::file('cover_image')}}
            </div>
    <br>
        {{Form::submit('Iesniegt',['class' => 'btn btn-primary'])}}
    {!! Form::close() !!}
@endsection
