MySQL Twin Dump
===============
[![Travis Build Status](https://travis-ci.org/webarchitect609/mysql-twin-dump.svg?branch=master)](https://travis-ci.org/webarchitect609/mysql-twin-dump)
[![Latest version](https://img.shields.io/github/v/tag/webarchitect609/mysql-twin-dump?sort=semver)](https://github.com/webarchitect609/mysql-twin-dump/releases)
[![License](https://img.shields.io/github/license/webarchitect609/mysql-twin-dump)](LICENSE.md)

[translate in English](./README.md)

**Пожалуйста, будьте осторожны:** это пока-что betta-версия и всё ещё может измениться.

Сохраняет дамп всей MySQL базы данных в один `*.sql` или `*.sql.bz2` файл, игнорируя содержимое заданного набора таблиц.
Предназначена для уменьшения размера дампа MySQL базы данных в тех случаях, когда заранее известно, что данные в
определённых таблицах не имеют ценности, но сами таблицы должны присутствовать для нормальной работы.

Возможности
-----------
- Запускает `mysqldump` дважды, используя опции `--no-data` или `--ignore-table` для исключения содержимого указанного
  набора таблиц, но создаёт один файл дампа
- Поддерживает сжатие Bzip2
- Режим "сухого запуска" позволяет просмотреть все команды, которые будут запущены при штатном режиме работы

Системные требования
--------------------
- `mysqldump`
- `bzip2`

Установка
---------
Просто сделайте `git clone`

Помочь проекту
--------------
Вы можете использовать этот скрипт совершенно бесплатно, а можете поблагодарить автора за проделанную работу и
поддержать желание делать новые полезные проекты:
- [ЮMoney](https://sobe.ru/na/mysql_twin_dump)

Использование
-------------

Например, если вы хотите сохранить дамп базы данных `database`, используя bzip2 сжатие, но исключив содержимое таблиц
`b_event_log`, `b_event` и `b_perf_sql`

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

Получить все возможные опции и режимы

```shell script
./bin/mysqltwindump --help
```

Известные особенности
---------------------
Пока отсутствуют.

Лицензия и информация об авторе
-------------------------------
[BSD-3-Clause](LICENSE.md)
