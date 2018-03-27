<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Reply;
use Session;
use App\Like;

class RepliesController extends Controller
{
    public function like($id){
    	$reply = Reply::find($id);

    	Like::create([
    		'reply_id' => $id,
    		'user_id' => Auth::id()
    	]);

    	Session::flash('success','You liked the reply');

    	return redirect()->back();
    }

    public function unlike($id){
    	$like = Like::where('reply_id',$id)->where('user_id', Auth::id())->first();
    	$like->delete();
    	Session::flash('success', 'You unliked the reply');

    	return redirect()->back();
    }

    public function best_answer($id){
        $reply = Reply::find($id);
        $reply->best_answer = 1;
        $reply->save();

        $reply->user->points += 100;
        $reply->user->save();

        Session::flash('success','Reply marked as best answer');

        return redirect()->back();
    }

    public function edit($id){
        $reply = Reply::find($id);
        return view('replies.edit')->with('reply',$reply);
    }

    public function update($id){
        $r = Reply::find($id);

        $this->validate(request(),[
            'content' => 'required'
        ]);

        $r->content = request('content');
        $r->save();

        Session::flash('success','Your reply was updated.');
        return redirect()->route('discussion',['slug' => $r->discussion->slug]);
    }
}
