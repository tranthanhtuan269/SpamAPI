<?php

namespace App\Http\Controllers;

use App\Models\Country;

use Illuminate\Http\Request;
use App\Transformers\CountryTransformer;

class CountryController extends Controller
{

	public function index(){
                $countries = Country::get();

                return fractal()
                        ->collection($countries)
                        ->transformWith(new CountryTransformer)
                        ->toArray();
        }

        public function show(Country $country)
        {
                return fractal()
                        ->item($country)
                        ->parseIncludes(['cities'])
                        ->transformWith(new CountryTransformer)
                        ->toArray();
        }

        public function slug(string $slug){
                $country = country::where("slug", "=", $slug)->first();
                return fractal()
                        ->item($country)
                        ->parseIncludes(['cities'])
                        ->transformWith(new CountryTransformer)
                        ->toArray();
        }
}
