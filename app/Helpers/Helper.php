<?php

namespace App\Helpers;

use App\Models\Report;
use App\Models\Spam;


class Helper
{
    
    public static function updateReportedName($user)
    {
        // update reported_name
        $new_suggest_name = Report::select('suggest_name', \DB::raw('count(*) as total'))
                        ->where('reported_id', $user->id)
                        ->groupBy('suggest_name')
                        ->orderBy('total', 'desc')->first();
                        
        $spam = Spam::where('reported_id', $user->id)->first();
        $spam->reported_name = $new_suggest_name->suggest_name;
        $spam->save();
        // end update
    }
    
    public static function updateReportedJob($user)
    {
        // update reported_name
        $new_suggest_job = Report::select('job_id', \DB::raw('count(*) as total'))
                        ->where('reported_id', $user->id)
                        ->groupBy('job_id')
                        ->orderBy('total', 'desc')->first();
                        
        $spam = Spam::where('reported_id', $user->id)->first();
        $spam->job_id = $new_suggest_name->job_id;
        $spam->save();
        // end update
    }
}
