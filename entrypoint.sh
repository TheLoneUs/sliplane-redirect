#!/bin/sh

# Replace the placeholder with the environment variable value
envsubst '$TARGET_DOMAIN' < /etc/nginx/conf.d/nginx.conf.template > /etc/nginx/conf.d/default.conf

# Start nginx
nginx -g 'daemon off;'