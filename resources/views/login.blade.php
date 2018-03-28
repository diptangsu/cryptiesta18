@extends('master')

@section('content')

    <div class="login">

        <!-- Login -->
        <div class="login__block toggled" id="1-login"
             style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
            <div class="login__block__header">
                <i class="zmdi zmdi-account-circle"></i>
                All the best for<br>C R Y P T 1 3 5 T A

                <div class="actions login__block__actions">
                    <div class="dropdown-basic-demo">
                        <a href="" data-toggle="dropdown"><i class="zmdi zmdi-more-vert"></i></a>

                        <ul class="dropdown-menu pull-right">
                            <li>
                                <a href="{{ url('/teams/create') }}">
                                    Register
                                </a>
                            </li>
                            <li>
                                <a id="sa-title">Your Password</a>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>

            <div class="login__block__body">
                <form method="post" action="{{ url('/login') }}" autocomplete="off">
                    {{ csrf_field() }}
                    <div class="form-group form-group--float form-group--centered form-group--centered">
                        <input required type="text" class="form-control" name="teamname">
                        <label>Team Name</label>
                        <i class="form-group__bar"></i>
                    </div>
                    <div class="form-group form-group--float form-group--centered form-group--centered">
                        <input required type="password" class="form-control" name="password">
                        <label>Password</label>
                        <i class="form-group__bar"></i>
                    </div>

                    <button type="submit" class="btn btn--light btn--icon m-t-15"><i
                                class="zmdi zmdi-long-arrow-right"></i></button>
                </form>
            </div>
        </div>
    </div>

    <link href="{{ url('css/fingerdrumming.css') }}" rel="stylesheet">

    <div class="loading" style="margin-top: 12%;">
        <div class="finger finger-1">
            <div class="finger-item">
                <span></span><i></i>
            </div>
        </div>
        <div class="finger finger-2">
            <div class="finger-item">
                <span></span><i></i>
            </div>
        </div>
        <div class="finger finger-3">
            <div class="finger-item">
                <span></span><i></i>
            </div>
        </div>
        <div class="finger finger-4">
            <div class="finger-item">
                <span></span><i></i>
            </div>
        </div>
        <div class="last-finger">
            <div class="last-finger-item"><i></i></div>
        </div>
    </div>

@endsection