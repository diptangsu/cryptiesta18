<!-- Header -->
<header id="header">
    <div class="logo">
        <style>
            .question:hover {
                text-shadow: 2px 2px 10px #000000;
                filter: dropshadow(color=#000000, offx=2, offy=2);
            }
        </style>
        <a class="hidden-xs" id="teamname" style="text-shadow: #faff7c 0 0 10px, #020000 5px 5px 5px;">
            {{ $teamName }}
            <small style="color: #b6ff1c;">Score: {{ $score }}</small>
        </a>
        <i class="logo__trigger zmdi zmdi-menu" data-mae-action="block-open" data-mae-target="#navigation"></i>
    </div>

    <ul class="top-menu" style="float: right;">
        <li class="top-menu__profile dropdown">
            <a data-toggle="dropdown" href="">
                <i class="zmdi zmdi-more-vert"></i>
            </a>

            <ul class="dropdown-menu pull-right dropdown-menu--icon">
                <li>
                    <a target="_blank" href="{{ url('/leaderboard') }}"><i class="zmdi zmdi-assignment-account"></i>
                        Leaderboard
                    </a>
                </li>
                <li>
                    <a target="_blank" href="{{ url('/submissions') }}"><i class="zmdi zmdi-check-circle "></i>
                        Submissions
                    </a>
                </li>
                <li>
                    <a href="{{ url('/logout') }}"><i class="zmdi zmdi-time-restore"></i> Logout</a>
                </li>
            </ul>
        </li>
    </ul>

    <style>
        .shadow {
            display: inline-block;
            float: right;
            padding: 15px;
            margin: 5px;
            -moz-box-shadow: rgba(0, 0, 0, 0.8) 3px 3px 10px inset;
            -webkit-box-shadow: rgba(0, 0, 0, 0.8) 3px 3px 10px inset;
            box-shadow: rgba(0, 0, 0, 0.8) 3px 3px 10px inset;
            -webkit-transition: box-shadow 0.2s ease-in;
            -moz-transition: box-shadow 0.2s ease-in;
            transition: box-shadow 0.2s ease-in;
        }
        .shadow:hover {
            -moz-box-shadow: rgba(30, 42, 49, 0.8) 5px 5px 55px inset;
            -webkit-box-shadow: rgba(30, 42, 49, 0.8) 5px 5px 55px inset;
            box-shadow: rgba(30, 42, 49, 0.8) 5px 5px 55px inset;
        }
        .shadow a {
            max-width: 100%;
            -webkit-border-radius: 50%;
            -moz-border-radius: 50%;
            border-radius: 50%;
        }
    </style>
    <div>
        <div class="shadow">
            {{ $participant2 }}
        </div>
        <div class="shadow">
            {{ $participant1 }}
        </div>
    </div>

</header>
