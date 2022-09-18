<?php

namespace App\Http\Controllers\Pages\Config;

use Zevitagem\LaravelSaasTemplateCore\Http\Controllers\Pages\Config\BaseConfigController as BaseConfigControllerVendor;

abstract class BaseConfigController extends BaseConfigControllerVendor
{
    public function __construct()
    {
        $this->configureIndex('packaged', true);

        parent::__construct();
    }
}