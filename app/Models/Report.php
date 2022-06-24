<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Traits\Orderable;
use App\Models\Spam;
use App\Models\Tag;

class Report extends Model
{
    use Orderable;
    
    protected $table = 'reports';
    
    public function spam()
    {
    	return $this->belongsTo(Spam::class);
    }

    public function reporter()
    {
    	return $this->belongsTo(User::class, 'reporter_id');
    }

    public function reported()
    {
    	return $this->belongsTo(User::class, 'reported_id');
    }
}
