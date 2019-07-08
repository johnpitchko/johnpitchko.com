---
id: 630
title: Enable logging in WordPress and PHP for Apache on Debian/Ubuntu
date: 2018-03-23T10:48:52+00:00
author: John Pitchko

guid: https://35.182.253.99/?p=630
permalink: /enable-logging-in-wordpress-and-php-for-apache-on-debian-ubuntu/
categories:
  - Software Development
---
I was working on my custom theme for this blog and was running into an issue involving the [Jetpack](https://jetpack.com) plugin for Wordpress. After spending a couple of hours tinkering around, I determined that the cause _appears_ to be related to [Scotch Box](https://box.scotch.io) (no issues when executing the same steps using [VCCW](https://vccw.cc)).

I opened an [issue with the Scotch Box repo](https://github.com/scotch-io/scotch-box/issues/373) and am gathering log data from both Wordpress and PHP. After struggling to find detailed instructions for how to enable and access error logs for both Wordpress and PHP, I wrote the below to help future me and others who are also struggling.

## Enabling Logging in Wordpress

Reference: <a href="https://codex.wordpress.org/Debugging_in_WordPress">Debugging in Wordpress (Automattic)</a>

Add the following lines to your wp-config.php file:

```php
define('WP_DEBUG', true);
define('WP_DEBUG_LOG', true);
define('WP_DEBUG_DISPLAY', false);
```

If you are debugging Jetpack on a localhost, add this line to disable modules that require Jetpack to connect to Wordpress.com:
`define( 'JETPACK_DEV_DEBUG', true );`

## Enable Logging in PHP

Reference: [PHP: error_reporting](https://php.net/manual/en/function.error-reporting.php)

The first step is to determine the location of the PHP binary your install of Apache is using. The simplest way to do this is to create a file and placing it in the root of your web hosting directory (e.g. /var/www). This file should contain:

```html
<?php echo phpinfo(); ?>
```

Navigate to that URL (**https://localhost/phpinfo.php**) in your browser. You will see the a list of configuration values for the PHP instance that Apache is using.

[caption id="attachment_635" align="aligncenter" width="984"]<img class="size-full wp-image-635" src="https://35.182.253.99/wp-content/uploads/phpinfo.png" alt="PHP information for Apache" width="984" height="595" /> PHP information for Apache[/caption]

Look for the line **Configuration File (php.ini) Path**. This is the file that must be modified to include the logging options. Most of the configuration fields are already specified in this file, so their values just need to be modified.

Open this file and modify the following lines to appear as below:

```
error_reporting = E_ALL | E_STRICT
display_errors = On
log_errors = On
error_log = /var/log/php_errors.log
```

Once the configuration is modified, the log file will need to be created. On Scotch Box, the /var/log directory is restricted, so the web user may be prevented from logging to this location by default. If hosting on Scotch Box or Vagrant, make sure to **vagrant ssh** first.

```sh
sudo touch /var/log/php_errors.log
sudo chown www-data: /var/log/php_errors.log
sudo chmod +rw /var/log/php_errors.log
```

Restart Apache for the changes to take effect.

```
$ sudo service apache2 restart
```

## Accessing Logs
When either Wordpress or the PHP interpreter throw errors while serving your site, they should now get recorded in the log file. You can use **tail** or your favourite text editor to view the contents and troubleshoot your issue.

You can find these error logs at these locations:

Wordpress: /var/www/public/wp-content/debug.log
PHP: /var/log/php_errors.log
