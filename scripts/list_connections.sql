select
	CONCAT(state::varchar, ': '),
	CONCAT(count(state)::integer, ' ', 'connections')
from
	pg_catalog.pg_stat_activity
where
	backend_type = 'client backend'
	and state = 'active'
group by
	state
union all
select
	CONCAT(state::varchar, ': '),
	CONCAT(count(state)::integer, ' ', 'connections')
from
	pg_catalog.pg_stat_activity
where
	backend_type = 'client backend'
	and state = 'idle in transaction'
group by
	state
union all
select
    CONCAT(state::varchar, ': '),
	CONCAT(count(state)::integer, ' ', 'connections')
from
	pg_catalog.pg_stat_activity
where
	backend_type = 'client backend'
	and state = 'idle'
group by
	state
union all 
select
	CONCAT(name::varchar, ': '),
	CONCAT(setting::integer, ' ', 'connections')
from
	pg_settings
where
	name in ('max_connections');