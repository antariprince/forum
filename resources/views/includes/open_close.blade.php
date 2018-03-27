<span>{{ $d->user->name }}, <b>{{ $d->created_at->diffForHumans() }}</b></span>

@if($d->hasBestAnswer())
<span class="btn btn pull-right btn-danger btn-xs">closed</span>
@else
<span class="btn btn pull-right btn-success btn-xs">open</span>
@endif