<aside id="navigation">
    <div class="navigation__header">
        <i class="zmdi zmdi-long-arrow-left" data-mae-action="block-close"></i>
    </div>

    <div class="navigation__menu c-overflow" style="margin-top: 0px;">
        <div style="margin-left: 25px;">
            <h4>
                Time Left:<br>
                <small id="time"></small>
            </h4>
        </div>
        <br><br><br><br>

        <ul>
            @php
                $k = 0;
                $n = count($allSubmissions);
                if ($n == 0) {
                    $allSubmissions[0] = -1;
                }
            @endphp
            @foreach($questions as $ques)
                <li class="{{ $ques->id == $question->id ? "navigation__active" : "" }}">
                    @if($ques->id == $allSubmissions[$k])
                        <?php $k += $k < $n - 1 ? 1 : 0; ?>
                        <a href='/questions/{{ $ques->id }}' style="color: #3f8c42;">
                    @else
                        <a href='/questions/{{ $ques->id }}'>
                            @endif
                            @if($ques->id == $allSubmissions[$k])
                                {{--<i class="zmdi zmdi-check-circle zmdi-hc-fw"></i>--}}
                                <i class="zmdi zmdi-check-all zmdi-hc-fw"></i>
                            @else
                                <i class="zmdi zmdi-flag zmdi-hc-fw"></i>
                            @endif
                            {{ $ques->name }}
                            <div style="float: right; margin-right: 20px;">{{ $ques->points }}</div>
                        </a>
                </li>
            @endforeach
        </ul>
    </div>
</aside>