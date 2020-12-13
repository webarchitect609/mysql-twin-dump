MySQL Twin Dump
===============
[![Travis Build Status](https://travis-ci.org/webarchitect609/mysql-twin-dump.svg?branch=master)](https://travis-ci.org/webarchitect609/mysql-twin-dump)
[![Latest version](https://img.shields.io/github/v/tag/webarchitect609/mysql-twin-dump?sort=semver)](https://github.com/webarchitect609/mysql-twin-dump/releases)
[![License](https://img.shields.io/github/license/webarchitect609/mysql-twin-dump)](LICENSE.md)

[перевести на русский](./README_ru.md)

**Please, be careful:** this is beta-version so far and things can change.

Dumps an entire MySQL database to a single `*.sql` or `*.sql.bz2` file, ignoring contents for specific set of tables.
It's intended to reduce the MySQL dump file size when it's known that some tables have insignificant data, but must
present in the database for normal operation mode.

Features
--------
- Runs `mysqldump` twice using `--no-data` or `--ignore-table` options to exclude content of specified set of tables,
  but gets an entire database dump as single file
- Supports Bzip2 compression
- Dry-run mode lets you review all the actual commands that would be executed in the normal mode

Requirements
------------
- `mysqldump`
- `bzip2`

Installation
------------
`git clone` this repo wherever you want 

Support
-------
You can use this script totally for free, or you can appreciate the author for his work and support desire to make new
useful projects:
- [ЮMoney](https://sobe.ru/na/mysql_twin_dump)

Usage
-----

For example, if you want to dump `database` with bzip2 compression, but exclude content of tables `b_event_log`,
`b_event` and `b_perf_sql`

```shell script
./bin/mysqltwindump --exclude-content b_event_log \
                    --exclude-content b_event \
                    --exclude-content b_perf_sql \
                    --host "localhost" \
                    --port "3306" \
                    --user "user" \
                    --password "password" \
                    --database "database" \
                    --bzip2 \
                    > "mysql-twin-dump_$(date +%Y-%m-%d_%H-%M).sql.bz2"
```

Get all possible options and modes

```shell script
./bin/mysqltwindump --help
```

Known Issues
------------
None so far.

Licence & Author Information
----------------------------
[BSD-3-Clause](LICENSE.md)
