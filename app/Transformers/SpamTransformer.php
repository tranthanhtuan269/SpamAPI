<?php

namespace App\Transformers;

use League\Fractal\TransformerAbstract;
use App\Models\Spam;
// use App\Transformers\DistrictTransformer;

class SpamTransformer extends TransformerAbstract
{
    // protected $availableIncludes = ['districts'];
    /**
     * A Fractal transformer.
     *
     * @return array
     */
    public function transform(Spam $spam)
    {
        return [
            'id' => $spam->id,
            'name' => $spam->name,
        ];
    }

    // public function includeDistricts(City $city)
    // {
    //     return $this->collection($city->districts, new DistrictTransformer);
    // }
}
