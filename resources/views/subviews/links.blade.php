@php
    $dir = "assets/questions/$question->id/links";
@endphp
@if (is_dir($dir))
    @php
        $files = scandir($dir);
        $noOfFiles = count($files);
    @endphp
    <div class="row">
        @for($i = 2; $i < $noOfFiles; $i++)
            <div class="col-sm-2 col-xs-6">
                @php
                    $url = url("$dir/$files[$i]");
                @endphp
                <a target="_blank" href="{{ $url }}" class="btn btn-default" style="margin-bottom: 10px;">
                    <i class="zmdi zmdi-arrow-right-top zmdi-hc-fw"></i>
                    {{ $files[$i] }}
                </a>
            </div>
        @endfor
    </div>
@endif