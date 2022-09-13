<?php

namespace App\Http\Controllers\Pages;

use App\Services\ModalityService;
use App\Http\Controllers\Pages\CrudController;

class ModalityController extends CrudController
{
    public function __construct(ModalityService $service)
    {
        parent::__construct();

        $this->setService($service);
    }
}
