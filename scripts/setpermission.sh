#!/bin/bash
# Set ownership for all folders
chown -R www-data:www-data /var/www/html/uat
chown -R www-data:www-data /var/www/html/frontapiuat
# set files to 644 [except *.pl *.cgi *.sh]
find /var/www/html/ -type f -not -name ".pl" -not -name ".cgi" -not -name "*.sh" -print0 | xargs -0 chmod 0644

# set folders to 755
find /var/www/html/ -type d -print0 | xargs -0 chmod 0755
