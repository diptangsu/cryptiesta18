<!-- Header -->
<header id="header">
    <div class="logo">
        <a class="hidden-xs">
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
                    <a href="{{ url('/logout') }}"><i class="zmdi zmdi-time-restore"></i> Logout</a>
                </li>
            </ul>
        </li>
    </ul>

    <div>
        <div style="float: right; padding: 15px;  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
            {{ $participant2 }}
        </div>
        <div style="float: right; padding: 15px; margin-right: 10px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
            {{ $participant1 }}
        </div>
    </div>

</header>
