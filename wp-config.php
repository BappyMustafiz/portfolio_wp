<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'portfolio_wp');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'zn`I~fzJT`![gNR3Oh;f2p#^?_MI{)e#1*6dbAA`1ABz8~v}SA HRnc9GV2D7>,n');
define('SECURE_AUTH_KEY',  '@>pTz{C_7YhGIkSB8pHHYI1[C_6W5dstvJWp+X0b2X+YD}8)PgfUO^8*tv5sBh9f');
define('LOGGED_IN_KEY',    ']bT([o$#|U@qSc[HYziqbWYXjh[f&RrjwfAs[6oB&?0@(;?V#F^w=:B1KHT2|__3');
define('NONCE_KEY',        'kOzQ9e+A2df_-)YF.0*QhF7L]FEv3JfCQw^y.V}0,03(^6}O){K/N=[hx=_3_z1b');
define('AUTH_SALT',        '?H&zXg?1N//k%!K92m% U#NkSvImSN?m&<9m8L?)QZsj~3z$;-+S4P)}?|XMFGC=');
define('SECURE_AUTH_SALT', '>4D/c(iF/*|M(L8i%_Z8+zc-uF74M oc-jSzX>)h96Zf)Nq%F~Y6_k7UBe5>|]P3');
define('LOGGED_IN_SALT',   'jaD`PC~|K F`p|VV$,N?J=lMmCl26,)Ppu(/}UsN/@`@(`!B4&X!;n%5!]kEvz(p');
define('NONCE_SALT',       '(J-|>>e3[zT,-O~nBG@.u}.CS$8ataue;O$6|5<e<FmO$u2wL70f6@>,KbGnl1@y');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
