<?php

namespace App\Transformers;

use League\Fractal\TransformerAbstract;
use App\Models\Job;

class JobTransformer extends TransformerAbstract
{
    
    /**
     * A Fractal transformer.
     *
     * @return array
     */
    public function transform(Job $job)
    {
        return [
            'id' => $job->id,
            'name' => $job->name,
            'parent' => isset($job->parent_id) ? $job->parent : null,
            'childs' => $job->children,
        ];
    }
}
