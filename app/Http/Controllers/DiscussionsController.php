<?php

namespace App\Http\Controllers;

use Auth;
use Illuminate\Http\Request;
use App\Discussion;
use App\Reply;
use App\User;
use Session;
use Notification;

class DiscussionsController extends Controller
{
    public function create(){
    	return view('discuss');
    }

    public function store(){
    	$r = request();
    	$this->validate($r,[
    		'channel_id' => 'required',
    		'content' => 'required',
    		'title' => 'required'
    	]);

    	$discussion = Discussion::create([
    		'title' => $r->title,
    		'content' => $r->content,
    		'channel_id' => $r->channel_id,
    		'slug' => str_slug($r->title),
    		'user_id' => Auth::id()
    	]);

    	Session::flash('success','Discussion successfully created.');

    	return redirect()->route('discussion',['slug' => $discussion->slug]);
    }

    public function show($slug){
    	
    	$discussion = Discussion::where('slug',$slug)->first();

        $best_answer = $discussion->replies()->where('best_answer', 1)->first();
        //dd($discussion);

    	return view('discussions.show')
        ->with('d',$discussion)
        ->with('best_answer', $best_answer);
    }

    public function reply($id){
        $d = Discussion::find($id);

        $reply = Reply::create([
            'user_id' => Auth::id(),
            'discussion_id' => $id,
            'content' => request()->reply
        ]);

        $reply->user->points += 25;
        $reply->user->save();

        $watchers = array();
        foreach($d->watchers as $watcher):
            array_push($watchers, User::find($watcher->user_id));
        endforeach;

        Notification::send($watchers, new \App\Notifications\NewReplyAdded($d));

        Session::flash('success','Replied to discussion.');
        return redirect()->back();
    }

    public function edit($slug){
        $discussion = Discussion::where('slug',$slug)->first();
        return view('discussions.edit')->with('discussion',$discussion);

    }

    public function update($id){
        $d = Discussion::find($id);
        $r = request();
        $this->validate($r,[
            'content' => 'required'
        ]);
        $d->content = $r->content;
        $d->save();
        Session::flash('success','Discussion content updated.');
        return redirect()->route('discussion',['slug' => $d->slug]);
    }
}
