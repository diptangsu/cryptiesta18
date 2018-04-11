@extends('master')

@section('content')
    <br>

    <section id="content"
             style="margin-left: 10%; margin-right: 10%;
             box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">

        <br>

        <div class="card">
            <div class="card__header">
                <h2>Number of Submissions per question
                    <small>
                        Add 1 to each of these numbers!
                    </small>
                </h2>
            </div>

            <div class="card__body">
                <div id="data-table-basic-header" class="table-bootgrid__header">
                    <div class="table-bootgrid__search form-group">
                    </div>
                </div>
                <div class="table-responsive">
                    <table id="data-table-basic" class="table-striped table table-bootgrid" aria-busy="false">

                        <thead>
                        <tr>
                            <th data-column-id="id" class="text-left" style="">
                                <a href="javascript:void(0);" class="column-header-anchor sortable">
                                    <span class="text">
                                        Question Number
                                    </span>
                                    <span class="table-bootgrid__icon zmdi "></span>
                                </a>
                            </th>
                            <th data-column-id="id" class="text-left" style="">
                                <a href="javascript:void(0);" class="column-header-anchor sortable">
                                    <span class="text">
                                        Question Name
                                    </span>
                                    <span class="table-bootgrid__icon zmdi "></span>
                                </a>
                            </th>
                            <th data-column-id="sender" class="text-left" style="">
                                <a href="javascript:void(0);" class="column-header-anchor sortable">
                                    <span class="text">
                                        Number of Submissions
                                    </span>
                                    <span class="table-bootgrid__icon zmdi "></span>
                                </a>
                            </th>
                        </tr>
                        </thead>

                        <tbody>

                        @php
                            $i = 1;
                        @endphp
                        @foreach($submissions as $submission)
                            <tr data-row-id="0">
                                <td class="text-left" style="">{{ $i }}</td>
                                <td class="text-left" style="">{!! $submission['questionName'] !!}</td>
                                <td class="text-left" style="">{{ $submission['number'] }}</td>
                            </tr>
                            @php
                                $i++;
                            @endphp
                        @endforeach

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>

@endsection