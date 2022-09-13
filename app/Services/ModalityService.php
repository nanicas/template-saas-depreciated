<?php

namespace App\Services;

use Zevitagem\LaravelSaasTemplateCore\Services\AbstractCrudService;
use App\Repositories\ModalityRepository;
use App\Validators\ModalityValidator;
use App\Handlers\ModalityHandler;
use Zevitagem\LegoAuth\Helpers\Helper;

class ModalityService extends AbstractCrudService
{
    public function __construct(
        ModalityRepository $repository,
        ModalityValidator $validator,
        ModalityHandler $handler,
    )
    {
        parent::setRepository($repository);
        parent::setValidator($validator);
        parent::setHandler($handler);
    }

    public function getDataToCreate()
    {
        return [];
    }

    public function getDataToShow(int $id)
    {
        $row = $this->getByIdAndSlug($id);

        return compact('row');
    }

    public function store(array $data)
    {
        return $this->getRepository()->store([
            'name' => $data['name'],
            'cost' => $data['cost'],
            'slug' => $data['slug']
        ]);
    }

    public function update(array $data)
    {
        $modality = $this->getByIdAndSlug($data['id']);

        if (empty($modality)) {
            throw new \InvalidArgumentException('Não foi possível encontrar a modalidade');
        }

        $modality->fill([
            'name' => $data['name'],
            'cost' => $data['cost']
        ]);

        return $this->getRepository()->update($modality);
    }

    public function getIndexData()
    {
        $rows = $this->getRepository()->getAllBySlug(Helper::getSlug());

        return compact('rows');
    }
}
