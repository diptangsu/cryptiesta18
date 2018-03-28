<?php

namespace App\Http\Controllers;

use App\Team;
use Illuminate\Http\Request;

class TeamsController extends Controller
{
    public function login(Request $request)
    {
        $team = Team::where('teamname', $request['teamname'])->where('password', $request['password'])->get();

//        dd($team->all());

        if ($team->count()) {
            $request->session()->put('teamId', $team->pluck('id')->all()[0]);
            $request->session()->put('teamName', $team->pluck('teamname')->all()[0]);
            $request->session()->put('participant1', $team->pluck('participant1')->all()[0]);
            $request->session()->put('participant2', $team->pluck('participant2')->all()[0]);
            $request->session()->put('timeleft', $team->pluck('timeleft')->all()[0]);

            return redirect('/questions/1');
        } else
            return redirect('/login');
    }

    public function logout(Request $request)
    {
        $teamId = session()->get('teamId');
//        dd(Cookie::get());
        /*$time = $_COOKIE['timeLeft'];
        Team::where('id', $teamId)->update(['timeleft' => $time]);*/

        session()->flush();

        return redirect('/');
    }

    public function timeup(Request $request)
    {
        session()->flush();

        return redirect('/leaderboard');
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (session()->has('teamId'))
            return redirect('/questions/1');
        return view('login');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('create-team');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate(request(), [
            'teamname' => 'required',
            'participant1' => 'required',
            'participant2' => 'required',
            'college1' => 'required',
            'college2' => 'required',
            'year1' => 'required',
            'year2' => 'required',
            'dept1' => 'required',
            'dept2' => 'required',
            'phone1' => 'required',
            'phone2' => 'required',
            'email1' => 'required',
            'email2' => 'required'
        ]);

        $password = array('password' => 'diptangsu');

        Team::create(request([
                'teamname',
                'participant1',
                'participant2',
                'college1',
                'college2',
                'year1',
                'year2',
                'dept1',
                'dept2',
                'phone1',
                'phone2',
                'email1',
                'email2']) + $password);

        $notify = Array();
        $notify['message'] = "Thank You for registering! We wish you all the best!";
        $notify['type'] = 'success';
        request()->session()->flash('notify', $notify);

        return redirect('/login');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
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
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
