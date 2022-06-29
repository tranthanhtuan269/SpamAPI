<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Traits\Orderable;
use App\Models\Report;

class Spam extends Model
{
    use Orderable;

    protected $table = 'spams';

    public function reports()
    {
    	return $this->hasMany(Report::class);
    }

    public function reported()
    {
        return $this->belongsTo(User::class, 'reported_id');
    }
}
