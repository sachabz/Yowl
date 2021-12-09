<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UsersController extends Controller
{
    // public function liste(){
    //     $users = \App\Models\User::all();
    //     return view('users', [
    //         'users' => $users
    //     ]);
    // }

    public function index(){
        $users = \App\Models\User::all();
        return $users;
    }

    public function store(Request $request){
        if (\App\Models\User::create($request->all())){
            return response()->json([
                'success' => "utilisateur enregistré"
            ]);
        };
    }

    public function show(\App\Models\User $user){
        return new \App\Http\Resources\User($user);
    }

    public function update(Request $request, \App\Models\User $user){
        if ($user->update($request->all())){
            return response()->json([
                'success' => "utilisateur modifié"
            ]);
        };
    }

    public function destroy(\App\Models\User $user){
        if ($user->delete()){
            return response()->json([
                'success' => "utilisateur supprimé"
            ]);
        };
    }
}
