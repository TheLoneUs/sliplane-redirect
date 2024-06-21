#!/bin/sh

# Set default value for HTTPS_REDIRECT if not provided
: "${HTTPS_REDIRECT:=false}"

# Export variables to be used by envsubst
export TARGET_DOMAIN
export HTTPS_REDIRECT

# Replace the placeholders with the environment variable values
envsubst '$TARGET_DOMAIN $HTTPS_REDIRECT' < /etc/nginx/conf.d/nginx.conf.template > /etc/nginx/conf.d/default.conf

# Start nginx
nginx -g 'daemon off;'