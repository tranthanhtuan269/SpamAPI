<?php

namespace App\Http\Controllers;

use App\Models\Job;

use Illuminate\Http\Request;
use App\Transformers\JobTransformer;

class JobController extends Controller
{

        public function index(){
                $jobs = Job::get();

                return fractal()
                        ->collection($jobs)
                        ->transformWith(new JobTransformer)
                        ->toArray();
        }

        public function show(Job $job)
        {
                return fractal()
                        ->item($job)
                        ->transformWith(new JobTransformer)
                        ->toArray();
        }

        public function slug(string $slug){
                $job = Job::where("slug", "=", $slug)->first();
                return fractal()
                        ->item($job)
                        ->transformWith(new JobTransformer)
                        ->toArray();
        }
}
