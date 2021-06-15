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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '123456' );

/** MySQL hostname */
define( 'DB_HOST', '192.168.49.1' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'o^,7_6j  H`|YYG~o3]i<zhju;ZFqwkJ2tBsk&STCjZsP_!jeN)O73NMc#unz!X6' );
define( 'SECURE_AUTH_KEY',  '8I7WF^y{44mw?O&6fQ|!@ZcSrj<>S^zFkWIUGN~eDx*rBPbxQvwUG{pB[)]^xbGS' );
define( 'LOGGED_IN_KEY',    'CF_DQcuzNIyM2aJ&.#eRM &s;Aq`q0!e q>ZlWN}v)uh ~D|)YR_q-I~WEIYXNU~' );
define( 'NONCE_KEY',        '%k]o]liH-Sk.=9>YY2><)sr!zlzpH=0:g{{)L?EWP%yS|D?]my+~~yn$D:EQ=>e~' );
define( 'AUTH_SALT',        'x}!Hxq=<kwD<E;QC$Bz(/tDikb8J58iv5A(F}F{kHm1&qn]q|)T.P|G$|4JqW8B0' );
define( 'SECURE_AUTH_SALT', 'keiTwFwbm eNZqsppo&UNW[G4s>(T7]4}f79n3LH(|L2&S1`&X+|/0?@^(vaiG48' );
define( 'LOGGED_IN_SALT',   '6cDsQSKItF;#-qd<L,8K}DEaFzI#Xm.L;83&Y}5R3F/{5l6oRHl=p2l -h<#p2aE' );
define( 'NONCE_SALT',       'bpZ!@Ob9Bwy88GZu/*|%4+_^Kg/][%]^iatPEp^?Y;kXz=dn(S#tig?k@l01KS56' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
    define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
