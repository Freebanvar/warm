SELECT reltuples::bigint AS estimate FROM pg_class WHERE relname = 'prediction';

SELECT query, total_exec_time, calls FROM pg_stat_statements
WHERE query LIKE '%prediction%' ORDER BY total_exec_time DESC LIMIT 1;