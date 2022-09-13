@extends($view_prefix . 'layouts.crud.list')
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
        <tr>
            <td>{{ $modality->getId() }}</td>
            <td>{{ $modality->getName() }}</td>
            <td>{{ $modality->getCost() }}</td>
            <td>{{ $modality->getCreatedAt() }}</td>
            <td>{{ $modality->getUpdatedAt() }}</td>
            <td class="text-center">
                <a class="btn btn-info" href="{{ route('modality.show', $modality->getId()) }}">
                    Editar
                </a>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
@endsection