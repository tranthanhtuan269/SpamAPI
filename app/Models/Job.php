<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Job;

class Job extends Model
{
    protected $table = 'jobs';

    public function children()
    {
    	return $this->hasMany(Job::class, 'parent_id');
    }

    public function parent()
    {
    	return $this->belongsTo(Job::class);
    }
}
