@extends($view_prefix . 'layouts.dashboard')

@section('menu-items')
    <li class="nav-item">
        <a class="nav-link {{ ($screen == 'scheduling') ? 'active' : '' }}" href="{{ '#' }}">
            <span data-feather="calendar"></span>
            Custom
        </a>
    </li>
@endsection