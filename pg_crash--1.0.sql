/* pg_crash/pg_crash--1.0.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION pg_crash" to load this file. \quit

CREATE FUNCTION pg_crash()
RETURNS void
AS 'MODULE_PATHNAME'
LANGUAGE C;
