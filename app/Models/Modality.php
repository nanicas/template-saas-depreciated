<?php

namespace App\Models;

use Zevitagem\LaravelSaasTemplateCore\Models\AbstractModel;
use Illuminate\Database\Eloquent\SoftDeletes;

class Modality extends AbstractModel
{
    use SoftDeletes;

    protected $table = 'modalities';
    protected $fillable = [
        'name',
        'cost',
        'slug'
    ];

    public function getId()
    {
        return $this->id;
    }

    public function getName()
    {
        return $this->name;
    }

    public function getCost()
    {
        return $this->cost;
    }

    public function getSlug()
    {
        return $this->slug;
    }
}
