<?php

namespace App\Http\Controllers;

use App\Team;
use Illuminate\Http\Request;

class TeamsController extends Controller
{
    public function login(Request $request)
    {
        $team = Team::where('teamname', $request['teamname'])->where('password', $request['password'])->get();

        if ($team->count()) {
            $team = $team->first();
            $request->session()->put('teamId', $team->id);
            $request->session()->put('teamName', $team->teamname);
            $request->session()->put('participant1', $team->participant1);
            $request->session()->put('participant2', $team->participant2);
            $request->session()->put('timeleft', $team->timeleft);

            return redirect('/questions/1');
        } else {
            $notify = Array();
            $notify['message'] = "Wrong teamname/password";
            $notify['type'] = 'danger';
            request()->session()->flash('notify', $notify);

            return redirect('/login');
        }
    }

    public function logout(Request $request)
    {
        /*$teamId = session()->get('teamId');
        dd(Cookie::get());
        $time = $_COOKIE['timeLeft'];
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

    public function getPassword($name1, $name2, $num1, $num2)
    {
        $num = ($num1 + $num2);
        $name1 = explode(' ', $name1);
        $name2 = explode(' ', $name2);

        $initials = '';
        foreach ($name1 as $n)
            $initials .= $n[0];
        foreach ($name2 as $n)
            $initials .= $n[0];

        $password = $initials . $num;
        return $password;
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

        $pass = $this->getPassword(request('participant1'), request('participant2'),
                                    request('phone1'), request('phone2'));
        $password = array('password' => 'caot');

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
