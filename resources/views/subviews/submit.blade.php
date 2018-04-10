<br><br><br>

<form method="post" action="/questions/{{ $question->id }}" autocomplete="off">
    {{ csrf_field() }}
    <div class="row">
        <div class="col-sm-6">
            <div class="form-group">
                <input name="answer"
                       onkeyup="removeSpaces()"
                       id="answer"
                       required
                       class="form-control input-lg"
                       placeholder="Enter the flag as caot{flag}">
                <script>
                    var input = document.getElementById('answer');
                    document.getElementById("answer").addEventListener("keypress", removeSpaces(input));

                    function removeSpaces(val) {
                        val = document.getElementById("answer").value;
                        val = val.replace(/\s/g, "");
                        document.getElementById("answer").value = val;
                    }
                </script>

                <i class="form-group__bar"></i>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="form-group">
                <input hidden name="timeLeft" id="timer" value="{{ $timeLeft }}">
                <button name="submit" class="btn btn-primary"
                        style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                    Submit
                </button>
            </div>
        </div>
    </div>
</form>
<br>