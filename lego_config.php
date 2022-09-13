<?php
return [
    'middlewares' => [
        'auth_filler_middleware' => Zevitagem\LegoAuth\Middlewares\AuthFillerMiddleware::class,
        'authenticable_middleware' => Zevitagem\LegoAuth\Middlewares\AuthenticateMiddleware::class,
        'filler_singleton_state_middleware' => Zevitagem\LegoAuth\Middlewares\FillerSingletonStateMiddleware::class,
        'force_configured' => Zevitagem\LegoAuth\Middlewares\ForceConfiguredMiddleware::class,
    ],
    'models' => [
        'user' => \App\Models\User::class,
        'config_user' => \App\Models\ConfigUser::class,
        'rule' => \App\Models\Rule::class,

        'application' => \Zevitagem\LegoAuth\Models\Laravel\ApplicationL::class,
        'authorization' => \Zevitagem\LegoAuth\Models\Laravel\AuthorizationL::class,
        'contract' => \Zevitagem\LegoAuth\Models\Laravel\ContractL::class,
        'slug' => \Zevitagem\LegoAuth\Models\Laravel\SlugL::class,
        'scope' => \Zevitagem\LegoAuth\Models\Laravel\ScopeL::class,
        'customer' => \Zevitagem\LegoAuth\Models\Laravel\CustomerL::class,
        'segment' => \Zevitagem\LegoAuth\Models\Laravel\SegmentL::class,
    ],
    'api_group' => 'api',
    'config_user_api' => \Zevitagem\LegoAuth\Controllers\Api\ConfigUserApiController::class,
    'user_api' => \Zevitagem\LegoAuth\Controllers\Api\UserApiController::class,
    'is_sourcer' => false,
    'is_laravel' => true,
    'package' => 'anc',
    'pages' => [
        'user_config' => true
    ],
    'slugs_inside' => false
];