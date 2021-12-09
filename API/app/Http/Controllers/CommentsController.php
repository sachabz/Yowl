<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CommentsController extends Controller
{
    public function index(){
        $comments = \App\Models\Comments::all();
        return $comments;
    }

    public function store(Request $request){
        if (\App\Models\Comments::create($request->all())){
            return response()->json([
                'success' => "commentaire enregistré"
            ]);
        };
    }

    public function show(\App\Models\Comments $comment){
        return new \App\Http\Resources\Comments($comment);
    }

    public function update(Request $request, \App\Models\Comments $comment){
        if ($comment->update($request->all())){
            return response()->json([
                'success' => "commentaire modifié"
            ]);
        };
    }

    public function destroy(\App\Models\Comments $comment){
        if ($comment->delete()){
            return response()->json([
                'success' => "commentaire supprimé"
            ]);
        };
    }
}