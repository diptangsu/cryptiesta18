<?php

namespace App\Http\Controllers;

use App\Question;
use App\Submission;
use App\Team;
use Illuminate\Http\Request;

class QuestionsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // /questions
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // /questions/create
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // POST /questions
    }

    /**
     * Display the specified resource.
     *
     * @param Question $question
     * @return \Illuminate\Http\Response
     * @internal param int $id
     */
    public function show(Question $question)
    {
        // GET /questions/id

//        dd(session()->get('teamId', 'absent'));
//        dd($_COOKIE);

        if (!session()->has('teamId'))
            return redirect('/login');

        $teamId = session()->get('teamId');
        $teamName = session()->get('teamName');
        $participant1 = session()->get('participant1');
        $participant2 = session()->get('participant2');

        if (!array_key_exists('timeLeft', $_COOKIE))
            $timeLeft = session()->get('timeleft');
        else
            $timeLeft = $_COOKIE['timeLeft'];

        Team::where('id', $teamId)->update(['timeleft' => $timeLeft]);
        if ($timeLeft <= 0) {
            setcookie('timeLeft', null, time() - 3600);

            session()->flush();

            $notify = array();
            $notify['message'] = "Sorry! Time up!";
            $notify['type'] = 'danger';
            request()->session()->flash('notify', $notify);


            return redirect('/leaderboard');
        }

        $questions = Question::visible()->get();
        $submissionsCorrect = Submission::submittedAnswers($teamId)->where('points', '>', 0);
        $submissionsAll = Submission::submittedAnswers($teamId);
        $submissionsQuestionIds = $submissionsCorrect->pluck('questionId')->sort();
        $score = $submissionsAll->sum('points');
        $allSubmissions = array_values($submissionsQuestionIds->toArray());

        return view('question-page',
            compact('question', 'questions', 'allSubmissions',
                'score', 'teamId', 'teamName', 'participant1', 'participant2', 'timeLeft'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        // GET /questions/id/edit
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // PATCH /questions/id
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // DELETE /questions/id
    }
}
