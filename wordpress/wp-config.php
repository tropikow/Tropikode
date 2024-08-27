<?php
// ** Configuración de la base de datos ** //
define('DB_NAME', 'landing_db_wuyr');
define('DB_USER', 'landing_db_wuyr_user');
define('DB_PASSWORD', 'zShM0fVFlwHsZbHNA18Jgi8lPPedGkIj');
define('DB_HOST', 'dpg-cqptqtrqf0us73959860-a.oregon-postgres.render.com'); // Por ejemplo, 'localhost' o la URL de tu base de datos en Render
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');

// Configuración para PostgreSQL
define('DB_TYPE', 'pgsql');
define('DB_PORT', '5432'); // Puerto predeterminado para PostgreSQL

$table_prefix = 'wp_';

define('WP_DEBUG', false);

// Configuración del proxy
define('WP_PROXY_HOST', '192.168.84.101'); // Cambia esto si es necesario
define('WP_PROXY_PORT', '80'); // Cambia esto si está configurado en 8080
define('WP_PROXY_BYPASS_HOSTS', 'localhost, www.example.com, *.wordpress.org');

if ( !defined('ABSPATH') )
    define('ABSPATH', dirname(__FILE__) . '/');

require_once(ABSPATH . 'wp-settings.php');