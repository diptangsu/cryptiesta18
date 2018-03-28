<?php

namespace App;

class Question extends Model
{
    public function scopeVisible($query)
    {
        return $query->where('visible', 1);
    }

    public function scopeAnswer($query, $answer)
    {
        return $query->where('answer', $answer);
    }
}
