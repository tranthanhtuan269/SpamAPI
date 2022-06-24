<?php

namespace App\Transformers;

use League\Fractal\TransformerAbstract;
use App\Models\Report;

class ReportTransformer extends TransformerAbstract
{
    
    /**
     * A Fractal transformer.
     *
     * @return array
     */
    public function transform(Report $report)
    {
        return [
            'id' => $report->id,
            'comment' => $report->commemt,
            'reporter' => isset($report->reporter_id) ? $report->reporter : null,
            'reported' => isset($report->reported_id) ? $report->reported : null,
            'tag' => isset($report->tag_id) ? $report->tag : null,
        ];
    }
}
