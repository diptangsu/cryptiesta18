@if($question->hint)
    <div id="content__grid" style="display: block; margin: 0px auto;">
        <button class="btn btn-info"
                data-trigger="hover"
                data-toggle="popover"
                data-placement="right"
                data-content="{{ $question->hint }}"
                title=""
                data-original-title=""
                style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
            Hint
        </button>
    </div>
    <br><br>
@endif