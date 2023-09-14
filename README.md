# pg_crash

`pg_crash` provides a function to crash the PostgreSQL server.

This has been developed for researching how PostgreSQL starts up in recovery mode, so this is not a joke program.

## Installation
```
$ cd contrib
$ git clone https://github.com/s-hironobu/pg_crash.git
$ cd pg_crash
$ make && make install
```

Add the line shown below in your postgresql.conf.

```
shared_preload_libraries = 'pg_crash'
```

After starting your server, issue `CREATE EXTENSION` statement shown below.

```
postgres=# CREATE EXTENSION pg_crash;
```

## How to use

Execute the function below when you want to crash your server.

```
testdb=# SELECT pg_crash();
```

## Change Log
- 14th Sep 2023: Checked supporting Version 16.
- 7th Dec 2020: Version 1.0 Released.
