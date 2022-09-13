<?php

namespace App\Handlers;

use Zevitagem\LaravelSaasTemplateCore\Handlers\AbstractHandler;
use Zevitagem\LaravelSaasTemplateCore\Helpers\Helper;

class ModalityHandler extends AbstractHandler
{
    public function form(&$data)
    {
        $data['cost'] = (int) $data['cost'];
        $data['name'] = trim($data['name']);
    }

    public function store()
    {
        $data = & $this->data;
        $data['slug'] = Helper::getSlug();

        $this->form($data);
    }

    public function update()
    {
        $data = & $this->data;

        $this->form($data);
    }

}
