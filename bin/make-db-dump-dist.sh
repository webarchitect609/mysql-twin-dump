#!/usr/bin/env bash

set -eo pipefail

source ./mysqltwindump --exclude-content b_event_log \
                       --exclude-content b_event \
                       --exclude-content b_perf_sql \
                       --host "localhost" \
                       --port "3306" \
                       --user "user" \
                       --password "password" \
                       --database "database" \
                       > "mysql-twin-dump_$(date +%Y-%m-%d_%H-%M).sql"
