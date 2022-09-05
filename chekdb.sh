#!/bin/bash

if psql -lqt | cut -d \| -f 1 | grep -qw "postgres" ; then
    # database exists
    echo "DBexists"
else
    npm run initdb
    
fi