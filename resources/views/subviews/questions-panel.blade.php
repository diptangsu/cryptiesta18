<aside id="navigation">
    <div class="navigation__header">
        <i class="zmdi zmdi-long-arrow-left" data-mae-action="block-close"></i>
    </div>

    <div style="margin-left: 25px;">
        <h4>
            Time Left:<br>
            <small id="time"></small>
        </h4>
    </div>
    <br><br><br><br>

    <div class="navigation__menu c-overflow"
         style="margin-top: 0; margin-right: 20px; overflow-y: auto; height: 80%;" onload="scroll()">

        <ul>
            @php
                $k = 0;
                $n = count($allSubmissions);
                // dd($allSubmissions);
                if ($n == 0) {
                    $allSubmissions[0] = -1;
                }
            @endphp
            @foreach($questions as $ques)
                <li class="{{ $ques->id == $question->id ? "navigation__active" : "" }}"
                    id="{{ $ques->id == $question->id ? "active" : "inactive" }}">
                    <a href='/questions/{{ $ques->id }}' class="question"
                       style="color: {{ $ques->id == $allSubmissions[$k] ? "#3f8c42" : "" }};">

                    @if($ques->id == $allSubmissions[$k])
                        {{--<i class="zmdi zmdi-check-circle zmdi-hc-fw"></i>--}}
                        <?php $k += $k < $n - 1 ? 1 : 0; ?>
                        @if($allSubmissions[$k] == 11)
                                <?php $k += $k < $n - 1 ? 1 : 0; ?>
                        @endif
                        <i class="zmdi zmdi-check-all zmdi-hc-fw"></i>
                        @else
                        <i class="zmdi zmdi-flag zmdi-hc-fw"></i>
                    @endif

                    {!! $ques->name !!}
                    <div style="float: right; margin-right: 20px;">[{{ $ques->points }}]</div>
                    </a>
                </li>
            @endforeach
        </ul>
        <br><br><br>
    </div>
</aside>

@section('js')
    <script>
        $("#active").click(function() {
            $('div').animate({
                scrollTop: $('#active').offset().top
            }, 'slow');
        });
    </script>

    <script>
        var time = document.getElementById('timer').value;

        var x = setInterval(function () {
            time--;
            document.cookie = "timeLeft=" + time;

            var hours = parseInt(time / 3600);
            var left = time % 3600;
            var minutes = parseInt(left / 60);
            var seconds = left % 60;

            document.getElementById("time").innerHTML = hours + " Hours, " + minutes + " minutes, " + seconds + " seconds";

            if (time <= 0) {
                clearInterval(x);
                location.reload();
            }
        }, 1000);
    </script>
@endsection