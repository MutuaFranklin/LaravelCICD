#!/bin/bash

# Navigate to the Nginx site-enabled directory
cd /etc/nginx/sites-enabled

# Open the default file for editing
sed -i 's#/home/site/wwwroot#/home/site/wwwroot/public#g' default

# Navigate to the Laravel application directory
cd /home/site/wwwroot

# Copy the .env.example file to .env
cp .env.example .env

# Generate a new application key for Laravel
php artisan key:generate

# Restart Nginx
service nginx restart
