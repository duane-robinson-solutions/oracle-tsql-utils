--Find all active vsessions
select sid,serial# from v$session

--Find vsessions for specific user
select sid,serial# from v$session where username = '<user_schema>'

--Kill a session associated with a user
alter system kill session '<sid>,<serial#>'

--A query that produces ready-built kill-statements could be
select 'alter system kill session ''' || sid || ',' || serial# || ''';' from v$session where username = '<your_schema>';

--This will return one kill statement per session for that user – something like:
alter system kill session '375,64855';
alter system kill session '346,53146';

--Now Drop the user :
drop user <user_schema_name> cascade;

/*

*/
