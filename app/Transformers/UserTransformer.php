<?php

namespace App\Transformers;

use League\Fractal\TransformerAbstract;
use App\Models\User;

class UserTransformer extends TransformerAbstract
{
    
    /**
     * A Fractal transformer.
     *
     * @return array
     */
    public function transform(User $user)
    {
        return [
            'id' => $user->id,
            'name' => $user->name,
            'email' => $user->email,
            'first_name' => $user->first_name,
            'last_name' => $user->last_name,
            'birthday' => $user->birthday,
            'gender' => $user->gender,
            'street' => $user->street,
            'company' => $user->company,
            'about' => $user->about,
            'website' => $user->website,
            'job' => isset($user->job_id) ? $user->job : null,
            'city' => isset($user->city_id) ? $user->city : null,

        ];
    }
}
