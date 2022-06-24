<?php

namespace App\Transformers;

use League\Fractal\TransformerAbstract;
use App\Models\Country;
use App\Transformers\CityTransformer;

class CountryTransformer extends TransformerAbstract
{

    /**
     * A Fractal transformer.
     *
     * @return array
     */
    public function transform(Country $country)
    {
        return [
            'id' => $country->id,
            'name' => $country->name,
            'slug' => $country->slug,
            'cities' => $country->cities,
            'short_name' => $country->short_name
        ];
    }
}
