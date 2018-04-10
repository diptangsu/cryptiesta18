<?php

namespace App;

class Submission extends Model
{
    public function scopeAlreadySubmitted($query, $questionId, $teamId)
    {
        return $query->where('questionId', $questionId)
            ->where('teamId', $teamId);
    }

    public function scopeSubmittedAnswers($query, $teamId)
    {
        return $query->where('teamId', $teamId);
    }

    public function scopeSubmissionsPerQuestion($query)
    {
        return $query->get()->groupBy('questionId');
    }
}
