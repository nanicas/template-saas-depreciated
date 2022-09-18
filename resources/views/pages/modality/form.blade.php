@extends('layouts.crud.form')
@section('crud-form-content')
@php
extract($data);
$isUpdate = (isset($data['row']) && !empty($data['row']));
@endphp

<div class="row">
    <div class="col">
        <div class="form-group">
            <label for="name">Nome</label>
            <input type="text" class="form-control" name="name" value="{{ $isUpdate ? $data['row']->getName() : '' }}">
        </div>
    </div>
    <div class="col">
        <div class="form-group">
            <label for="cost">Valor</label>
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text">$</span>
                </div>
                <input value="{{ $isUpdate ? $data['row']->getCost() : '' }}" type="text" class="form-control" name="cost" id="cost" placeholder="Username" aria-describedby="inputGroupPrepend">
            </div>
        </div>
    </div>
</div>
@endsection