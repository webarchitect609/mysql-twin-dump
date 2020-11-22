#!/usr/bin/env bash
set -eo pipefail
source ./mysqltwindump --exclude-content "b_event_log b_event b_perf_sql" \
                       --host "localhost" \
                       --port "3306" \
                       --user "user" \
                       --password "password" \
                       --database "database" \
                       --bzip2 \
                       > "mysql-twin-dump_$(date +%Y-%m-%d_%H-%M).sql.bz2"
