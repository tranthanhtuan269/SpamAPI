<?php

namespace App\Http\Controllers;

use App\Models\Spam;

use Illuminate\Http\Request;
use App\Transformers\SpamTransformer;

class SpamController extends Controller
{

	public function index(){
                $spams = Spam::get();

                return fractal()
                        ->collection($spams)
                        ->transformWith(new SpamTransformer)
                        ->toArray();
        }

        public function show(Spam $spam)
        {
                return fractal()
                        ->item($spam)
                        // ->parseIncludes(['districts'])
                        ->transformWith(new SpamTransformer)
                        ->toArray();
        }

        public function slug(string $slug){
                $spam = Spam::where("slug", "=", $slug)->first();
                return fractal()
                        ->item($spam)
                        // ->parseIncludes(['districts'])
                        ->transformWith(new SpamTransformer)
                        ->toArray();
        }
}
