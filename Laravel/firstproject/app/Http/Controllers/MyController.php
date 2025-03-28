<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MyController extends Controller
{
    function index()
    {
        return "Hello from MyController";
    }
    function about()
    {
        return view('about');
    }
}
