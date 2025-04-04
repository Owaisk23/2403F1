<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MyController extends Controller
{
    // function index()
    // {
    //     return "Hello from MyController";
    // }
    function index()
    {

        $username = "Saim Burney";
        $maritalStatus = "Single";
        // //using compact method
        // return view('welcome', compact('username', 'maritalStatus'));
        // //using array method
        // return view('welcome', ['username' => $username, 'maritalStatus' => $maritalStatus]);
        // //using with method
        // return view('welcome')->with(['username' => $username, 'maritalStatus' => $maritalStatus]);
        // //using with method
        return view('welcome')->withUsername($username)->withMaritalStatus($maritalStatus);



    }
    function about()
    {
        return view('about');
    }
}
