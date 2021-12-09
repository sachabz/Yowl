<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LoginController extends Controller
{
    public function formulaire(){
        return view('signin');
    }

    public function traitement(){
        request()->validate([
            'identifiant' => ['required'],
            'mail' => ['required', 'email'],
            'password' => ['required', 'confirmed'],
            'password_confirmation' => ['required'],
        ]);
        $user = \App\Models\User::create([
        'name' => request('identifiant'),
        'email' => request('mail'),
        'password' => bcrypt(request('password')),
        ]);
        return "Inscription réussie! email = " . request('mail') . " login = " . request('identifiant');
    }
}