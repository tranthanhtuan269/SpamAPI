<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Spam;
use App\Models\Report;
use App\Models\Job;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        for($i = 0; $i < 100; $i++){
            $user = new User;
            $user->name = "usertest" . $i;
            $user->password = Hash::make('tohpassword');
            $user->email = "usertest" . $i . "@gmail.com";
            $user->phone = "09736193" . $i;
            $user->save();
        }

        for($i = 0; $i < 100; $i++){
            $spam = new Spam;
            $spam->reported_id = rand(1, 100);
            $spam->reported_name = "usertest" . $i;
            $spam->user_type = rand(1, 2);
            $spam->spam_type = rand(1, 5);
            $spam->tag_id = rand(1, 100);
            $spam->save();
        }

        for($i = 0; $i < 100; $i++){
            $report = new Report;
            $report->spam_id = rand(1, 100);
            $report->reporter_id = rand(1, 100);
            $report->reported_id = rand(1, 100);
            $report->comment = 'abc';
            $report->spam_type = rand(1, 2);
            $report->user_type = rand(1, 5);
            $report->tag_id = rand(1, 100);
            $report->save();
        }

        for($i = 0; $i < 100; $i++){
            $job = new Job;
            $job->name = "jobname " . $i;
            $job->parent_id = rand(0, 10);
            $job->save();
        }
    }
}
