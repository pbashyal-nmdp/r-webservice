#!/bin/sh

# Restart apache to enable cgi-bin
service apache2 restart

# Start FastRWeb/Rserve
export ROOT=/var/FastRWeb
R CMD Rserve --RS-conf ${ROOT}/code/rserve.conf --vanilla --no-save

tail -f /var/log/apache2/error.log /var/log/apache2/access.log 
