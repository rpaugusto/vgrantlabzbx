<?php
return [
    'title' => 'My Example Module',
    'version' => '1.0',
    'author' => 'Seu Nome',
    'description' => 'Exemplo de módulo no frontend Zabbix 6.4 via Docker',
    'url' => 'https://seusite.com',
    'hooks' => [
        'menu' => static function (array &$menu): void {
            $menu['myexample'] = [
                'label' => _('My Example'),
                'url'   => 'zabbix.php?action=myexample.list'
            ];
        }
    ]
];
