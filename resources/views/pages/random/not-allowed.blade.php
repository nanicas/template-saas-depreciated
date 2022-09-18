@extends($view_prefix . 'layouts.app')

@section('css')
<style>
    .error-page {
        padding: 40px 15px;
        text-align: center;
    }
    .error-actions {
        margin-top:15px;
        margin-bottom:15px;
    }
    .error-actions .btn {
        margin-right:10px;
    }
    h1.error-code {
        font-size :100px !important;
    }
</style>
@endsection

@section('content')

<div class="error-page">
    <h2>Oops!</h2>
    <h1 class="error-code"> 405 </h1>
    <h2>Not Found</h2>
    <div class="error-details">
        Nos desculpe, um erro ocorreu. Essa requisição não é permitida pelo tipo de seu usuário!
    </div>

    <!--    <form class="form-inline">
            <div class="form-group">
                <label for="search">Search</label>
                <input type="text" class="form-control" id="search" placeholder="Search something else...">
            </div>
            <button type="submit" class="btn btn-primary btn-large">Serch</button>
        </form>-->


    <div class="error-actions">
        <a href="{{ route('home.index') }}" class="btn btn-primary btn-lg">
            <span class="glyphicon glyphicon-home"></span>
            Voltar para à página inicial
        </a>
        <a href="#" class="btn btn-default btn-lg">
            <span class="glyphicon glyphicon-envelope"></span> Contato
        </a>
    </div>
</div>
@endsection