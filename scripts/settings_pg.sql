select
	name,
	CONCAT(setting::integer / 1024, ' ', 'Mb'),
	category,
	short_desc
from
	pg_settings
where
	name in ('shared_buffers', 'effective_cache_size', 'work_mem' )
union all
select
	name, 
	CONCAT(setting::integer, ' ', 'connections'),
	category,
	short_desc
from
	pg_settings
where
	name in ('max_connections')
union all
	select
	name, 
	setting,
	category,
	short_desc
from
	pg_settings
where
	name like '%checkpoint_completion_target%'
union all
	select
	name, 
	setting,
	category,
	short_desc
from
	pg_settings
where
	name like '%autovacuum%';