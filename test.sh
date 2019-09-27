#!/bin/bash
export PATH=/usr/local/Cellar/openresty/1.15.8.2/nginx/sbin:$PATH
exec prove -v "$@"