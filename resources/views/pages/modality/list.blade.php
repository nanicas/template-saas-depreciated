@extends('layouts.crud.list')
@section('crud-content')
<table class="table table-bordered table-sm table-striped">
    <thead>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Custo</th>
            <th>Data cadastro</th>
            <th>Data atualização</th>
            <th></th>
        <tr>
    </thead>
    <tbody>
        @foreach($rows as $modality)
            @php $id = $modality->getId() @endphp
            <tr data-id="{{ $id }}">
                <td>{{ $id }}</td>
                <td>{{ $modality->getName() }}</td>
                <td>{{ $modality->getCost() }}</td>
                <td>{{ $modality->getCreatedAt() }}</td>
                <td>{{ $modality->getUpdatedAt() }}</td>
                <td class="text-center">
                    <a class="btn btn-info" href="{{ route('modality.show', $id) }}">
                        Editar
                    </a>
                    @include($view_prefix . 'components.buttons.delete-button', ['route' => route('modality.destroy', $id)])
                </td>
            </tr>
        @endforeach
    </tbody>
</table>
@endsection