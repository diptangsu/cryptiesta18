<?php

namespace App\Http\Controllers;

use App\Question;
use App\Submission;
use App\Team;
use Illuminate\Http\Request;

class SubmissionsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $teams = Team::all();
        foreach ($teams as $team) {
            $submissions = Submission::submittedAnswers($team->id);
            $score = $submissions->sum('points');
            $team['score'] = $score;
        }
        $teams = collect($teams);
        $teams = $teams->sortByDesc('score');


        return view('leaderboard', compact('teams'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return void
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param Question $question
     * @return \Illuminate\Http\Response
     */
    public function store(Question $question)
    {
//        dd(request()->session()->all());
//        dd(request('answer'));
//        dd($question);

        $teamId = session()->get('teamId');
        $teamName = session()->get('teamName');

        if ($question->answer != null) {
            $this->validate(request(), [
                'answer' => 'required'
            ]);
        }

        $answer = request('answer');
//        dd($answer);

        if ($question->name == "Password") {
            $ans = Team::where('id', $teamId)->pluck('password')[0];
            if ($ans == $answer)
                $answer = "password";
        }

        $notify = Array();
        if (Submission::alreadySubmitted($question->id, $teamId)->where('points', '>', 0)->count() != 0) {
            $notify['message'] = "You have already answered that. Get over it and move on to the next question.";
            $notify['type'] = 'warning';
        } else if ($answer == $question->answer) {
            $notify['message'] = "Congratulations! You get $question->points points!";
            $notify['type'] = 'success';

            // save the submission
            $saveSubmission = array(
                'questionId' => $question->id,
                'questionName' => $question->name,
                'teamId' => $teamId,
                'teamName' => $teamName,
                'points' => $question->points);

            Submission::create($saveSubmission);
        } else {
            $notify['message'] = "Sorry! Wrong answer :(";
            $notify['type'] = 'danger';
            if ($question->negative < 0) {
                $saveSubmission = array(
                    'questionId' => $question->id,
                    'questionName' => $question->name,
                    'teamId' => $teamId,
                    'teamName' => $teamName,
                    'points' => $question->negative);
                $notify['message'] = "Be careful! You get $question->negative";
                Submission::create($saveSubmission);
            }
        }

        request()->session()->flash('notify', $notify);

        return redirect(request()->url());
    }

    /**
     * Display the specified resource.
     *
     * @param Question $question
     * @return \Illuminate\Http\Response
     * @internal param int $id
     */
    public
    function show(Question $question)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public
    function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public
    function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public
    function destroy($id)
    {
        //
    }
}
