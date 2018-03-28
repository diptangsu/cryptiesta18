@extends('master')

@section('content')
    <br>

    <section id="content"
             style="margin-left: 10%; margin-right: 10%;
             box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">

        <br>

        <div class="card">
            <div class="card__header">
                <h2>Leaderboard
                    <small>
                        Try to reach the top! We wish you all the best!
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
                                        Position
                                    </span>
                                    <span class="table-bootgrid__icon zmdi "></span>
                                </a>
                            </th>
                            <th data-column-id="id" class="text-left" style="">
                                <a href="javascript:void(0);" class="column-header-anchor sortable">
                                    <span class="text">
                                        Team Name
                                    </span>
                                    <span class="table-bootgrid__icon zmdi "></span>
                                </a>
                            </th>
                            <th data-column-id="sender" class="text-left" style="">
                                <a href="javascript:void(0);" class="column-header-anchor sortable">
                                    <span class="text">
                                        Team Member 1
                                    </span>
                                    <span class="table-bootgrid__icon zmdi "></span>
                                </a>
                            </th>
                            <th data-column-id="sender" class="text-left" style="">
                                <a href="javascript:void(0);" class="column-header-anchor sortable">
                                    <span class="text">
                                        Team Member 2
                                    </span>
                                    <span class="table-bootgrid__icon zmdi "></span>
                                </a>
                            </th>
                            <th data-column-id="sender" class="text-left" style="">
                                <a href="javascript:void(0);" class="column-header-anchor sortable">
                                    <span class="text">
                                        Score
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
                        @foreach($teams as $team)
                            <tr data-row-id="0">
                                <td class="text-left" style="">{{ $i }}</td>
                                <td class="text-left" style="">{{ $team->teamname }}</td>
                                <td class="text-left" style="">{{ $team->participant1 }}</td>
                                <td class="text-left" style="">{{ $team->participant2 }}</td>
                                <td class="text-left" style="">{{ $team->score }}</td>
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