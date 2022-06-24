<?php

namespace App\Transformers;

use League\Fractal\TransformerAbstract;
use App\Models\City;
use App\Transformers\CountryTransformer;

class CityTransformer extends TransformerAbstract
{
    
    /**
     * A Fractal transformer.
     *
     * @return array
     */
    public function transform(City $city)
    {
        return [
            'id' => $city->id,
            'name' => $city->name,
            'country' => $city->country,
            'slug' => $city->slug,
            'short_name' => $city->short_name
        ];
    }
}
