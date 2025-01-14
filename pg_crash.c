/*-------------------------------------------------------------------------
 * pg_crash.c
 *
 * Author: suzuki hironobu (hironobu@interdb.jp) 7, Dec, 2020
 * Copyright (C) 2020-2025  suzuki hironobu
 *-------------------------------------------------------------------------
 */
#include "postgres.h"
#include "tcop/utility.h"
#include "utils/elog.h"


PG_MODULE_MAGIC;

Datum		pg_crash(PG_FUNCTION_ARGS);

PG_FUNCTION_INFO_V1(pg_crash);

Datum
pg_crash(PG_FUNCTION_ARGS)
{
	elog(PANIC, "pg_crash is executed.");
	PG_RETURN_VOID();
}
