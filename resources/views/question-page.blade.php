@extends('master')

@section('content')

    @include('subviews.header')

    <section id="main">

        @include('subviews.questions-panel')

        @include('subviews.question-body')

        {{--@include('subviews.footer')--}}

    </section>

@endsection