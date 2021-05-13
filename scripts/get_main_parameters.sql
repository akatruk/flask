select
	CONCAT(name::varchar, ': '),
	CONCAT(setting::integer / 1024, ' ', 'Mb')
from
	pg_settings
where
	name in ('shared_buffers', 'effective_cache_size', 'work_mem' )
union all
select
	CONCAT(name::varchar, ': '),
	CONCAT(setting::integer, ' ', 'connections')
from
	pg_settings
where
	name in ('max_connections');