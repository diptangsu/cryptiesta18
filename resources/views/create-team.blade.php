@extends('master')

@section('content')

    <section id="content"
             style="margin-left: 10%;
             margin-right: 10%;
             box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
        <br><br>

        <div class="card">
            <div class="card__header">
                <h3>Register</h3>
                <small style="color: #ff8b2f;">
                    You will have to login using your team name and a password that we will generate for you.<br>
                    Please make sure you remember you team name.<br>
                    Please be very careful while entering the details.<br>
                    Your password will be generated based on what you enter.<br>
                </small>
            </div>

            <div class="card__body">

                <form method="post" action="{{ url('/teams/create') }}" autocomplete="off">

                    {{ csrf_field() }}

                    <div class="form-group form-group--float">
                        <input required type="text" class="form-control" name="teamname">
                        <label>Enter Team Name</label>
                        <i class="form-group__bar"></i>
                    </div>
                    <br><br>

                    <div class="row">
                        <div class="col-sm-6">
                            <h4>Team Member 1</h4>
                        </div>
                        <div class="col-sm-6">
                            <h4>Team Member 2</h4>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group form-group--float">
                                <input required type="text" class="form-control" name="participant1">
                                <label>Full Name</label>
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group form-group--float">
                                <input required type="text" class="form-control" name="participant2">
                                <label>Full Name</label>
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group form-group--float">
                                <input required type="text" class="form-control" name="college1">
                                <label>College</label>
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group form-group--float">
                                <input required type="text" class="form-control" name="college2">
                                <label>College</label>
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                    </div>

                    <br>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <div class="card__body">
                                    <h5>Year</h5><br>
                                    <div class="radio">
                                        <label>
                                            <input required type="radio" name="year1" value="1">
                                            <i class="input-helper"></i>
                                            1<sup>st</sup> Year
                                        </label>
                                    </div>
                                    <div class="clearfix"></div>

                                    <div class="radio">
                                        <label>
                                            <input required type="radio" name="year1" value="2">
                                            <i class="input-helper"></i>
                                            2<sup>nd</sup> Year
                                        </label>
                                    </div>
                                    <div class="clearfix"></div>

                                    <div class="radio">
                                        <label>
                                            <input required type="radio" name="year1" value="3">
                                            <i class="input-helper"></i>
                                            3<sup>rd</sup> Year
                                        </label>
                                    </div>
                                    <div class="clearfix"></div>

                                    <div class="radio">
                                        <label>
                                            <input required type="radio" name="year1" value="4">
                                            <i class="input-helper"></i>
                                            4<sup>th</sup> Year
                                        </label>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="form-group">
                                <div class="card__body">
                                    <h5>Year</h5><br>
                                    <div class="radio">
                                        <label>
                                            <input required type="radio" name="year2" value="1">
                                            <i class="input-helper"></i>
                                            1<sup>st</sup> Year
                                        </label>
                                    </div>
                                    <div class="clearfix"></div>

                                    <div class="radio">
                                        <label>
                                            <input required type="radio" name="year2" value="2">
                                            <i class="input-helper"></i>
                                            2<sup>nd</sup> Year
                                        </label>
                                    </div>
                                    <div class="clearfix"></div>

                                    <div class="radio">
                                        <label>
                                            <input required type="radio" name="year2" value="3">
                                            <i class="input-helper"></i>
                                            3<sup>rd</sup> Year
                                        </label>
                                    </div>
                                    <div class="clearfix"></div>

                                    <div class="radio">
                                        <label>
                                            <input required type="radio" name="year2" value="4">
                                            <i class="input-helper"></i>
                                            4<sup>th</sup> Year
                                        </label>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group form-group--select">
                                <select class="form-control" name="dept1">
                                    <option value="" selected disabled hidden>Select Department</option>
                                    <option>CSE</option>
                                    <option>IT</option>
                                    <option>ECE</option>
                                    <option>EE</option>
                                    <option>ME</option>
                                    <option>MCA</option>
                                    <option>EE</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="form-group form-group--select">
                                <select class="form-control" name="dept2">
                                    <option value="" selected disabled hidden>Select Department</option>
                                    <option>CSE</option>
                                    <option>IT</option>
                                    <option>ECE</option>
                                    <option>EE</option>
                                    <option>ME</option>
                                    <option>MCA</option>
                                    <option>EE</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group form-group--float">
                                <input required type="text" class="form-control" name="phone1">
                                <label>Phone Number</label>
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group form-group--float">
                                <input required type="text" class="form-control" name="phone2">
                                <label>Phone Number</label>
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group form-group--float">
                                <input required type="text" class="form-control" name="email1">
                                <label>Email</label>
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group form-group--float">
                                <input required type="text" class="form-control" name="email2">
                                <label>Email</label>
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                    </div>

                    <br><br>

                    <button type="submit" class="btn btn-primary btn-lg">Register</button>
                </form>
            </div>
        </div>

        @if ($errors->any())
            @foreach ($errors->all() as $error)
                <div class="alert alert-danger">
                    {{ $error }}
                </div>
            @endforeach
        @endif

    </section>

@endsection