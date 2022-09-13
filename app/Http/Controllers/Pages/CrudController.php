<?php

namespace App\Http\Controllers\Pages;

use Zevitagem\LaravelSaasTemplateCore\Http\Controllers\Pages\CrudController as CrudControllerVendor;

abstract class CrudController extends CrudControllerVendor
{
    public function __construct()
    {
        $this->configureIndex('packaged', false);

        parent::__construct();
    }
}
