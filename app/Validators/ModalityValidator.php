<?php

namespace App\Validators;

use Zevitagem\LaravelSaasTemplateCore\Validators\AbstractValidator;

class ModalityValidator extends AbstractValidator
{
    protected $messages = [
        'name_empty' => 'O nome da modalidade não foi preenchido'
    ];

    public function store()
    {
        $this->form();
    }

    public function form()
    {
        $data = $this->getData();

        if (empty($data['name'])) {
            $this->addError('name_empty');
        }
    }

    public function update()
    {
        $this->form();
    }
}
