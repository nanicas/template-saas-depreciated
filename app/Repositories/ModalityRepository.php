<?php

namespace App\Repositories;

use Zevitagem\LaravelSaasTemplateCore\Repositories\AbstractCrudRepository;
use App\Models\Modality;
use Illuminate\Support\Facades\DB;

class ModalityRepository extends AbstractCrudRepository
{
    public function __construct()
    {
        parent::setModel(new Modality());
    }

    public function getByPlanAndSlug(int $planId, int $slug)
    {
        $model = parent::getModel();
        $table = $model->getTable();

        $result = DB::table($table)
                ->selectRaw("$table.*")
                ->join('plan_modalities', 'plan_modalities.modality_id', '=', "$table.id")
                ->where('plan_modalities.plan_id', $planId)
                ->where("$table.slug", $slug)
                ->get();

        return $model->hydrate($result->toArray());
    }
}
