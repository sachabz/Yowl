<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PostsController extends Controller
{
    public function index(){
        $posts = \App\Models\Posts::all();
        return $posts;
    }

    public function store(Request $request){
        if (\App\Models\Posts::create($request->all())){
            return response()->json([
                'success' => "post enregistré"
            ]);
        };
    }

    public function show(\App\Models\Posts $post){
        return new \App\Http\Resources\Posts($post);
    }

    public function update(Request $request, \App\Models\Posts $post){
        if ($post->update($request->all())){
            return response()->json([
                'success' => "post modifié"
            ]);
        };
    }

    public function destroy(\App\Models\Posts $post){
        if ($post->delete()){
            return response()->json([
                'success' => "post supprimé"
            ]);
        };
    }
}