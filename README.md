MySQL Twin Dump
===============
[![Travis Build Status](https://travis-ci.org/webarchitect609/mysql-twin-dump.svg?branch=master)](https://travis-ci.org/webarchitect609/mysql-twin-dump)
[![Latest version](https://img.shields.io/github/v/tag/webarchitect609/mysql-twin-dump?sort=semver)](https://github.com/webarchitect609/mysql-twin-dump/releases)
[![License](https://img.shields.io/github/license/webarchitect609/mysql-twin-dump)](LICENSE.md)

**Please, be careful:** this is beta-version so far and things can change dramatically.

Dumps an entire MySQL database to a single `*.sql` or `*.sql.bz2` file, ignoring contents for specific set of tables. 

Features
--------
- Support Bzip2 compress

Requirements
------------
- `mysqldump`
- `bzip2`

Installation
------------
Just `git clone` this repo.

Usage
-----
Dump database `foo` to `my_dump.sql.bz2` with compression and excluding data from tables `b_event_log, b_event and
b_perf_sql`

```shell script
./bin/mysqltwindump --database foo \
                    -u bar \
                    -p "bitrix" \
                    -e "b_event_log b_event b_perf_sql" \
                    --bzip2 \
                    > "my_dump.sql.bz2"
```

Get more information about all possible options and modes

```shell script
./bin/mysqltwindump --help
```

Known Issues
------------
None so far.

Licence & Author Information
----------------------------
[BSD-3-Clause](LICENSE.md)
