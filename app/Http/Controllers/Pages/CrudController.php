<?php

namespace App\Http\Controllers\Pages;

use Zevitagem\LaravelSaasTemplateCore\Http\Controllers\Pages\CrudController as CrudControllerVendor;

abstract class CrudController extends CrudControllerVendor
{
    public function __construct()
    {
        if (!$this->existsConfigIndex('packaged')) {
            $this->configureIndex('packaged', false);
        }

        parent::__construct();
    }
}
