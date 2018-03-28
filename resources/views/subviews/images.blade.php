@php
    $dir = "assets/questions/$question->id/images";
@endphp
@if (is_dir($dir))
    @php
        $files = scandir($dir);
        $noOfFiles = count($files);
    @endphp
    <div id="content__grid" data-columns>
        @for($i = 2; $i < $noOfFiles; $i++)
            <div class="card widget-analytic"
                 style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                <div class="card__header">
                    <p>{{ $files[$i] }}</p>
                    @php
                        $url = url("$dir/$files[$i]");
                    @endphp
                    <img style="max-width: 100%;
                        max-height: 100%;
                        margin-right: 10px;
                        margin-top: 0px;
                        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);"
                         src="{{ url($url) }}">
                    <div class="actions">
                        <div class="dropdown">
                            <a href="" data-toggle="dropdown"><i class="zmdi zmdi-more-vert"></i></a>
                            <ul class="dropdown-menu pull-right">
                                <li><a download href="{{ url($url) }}"><i class="zmdi zmdi-download zmdi-hc-fw"></i>
                                        Download
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        @endfor
    </div>
@endif