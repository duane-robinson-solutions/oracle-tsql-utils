--Find all active vsessions
select sid,serial# from v$session

--Find vsessions for specific user
select sid,serial# from v$session where username = '<user_schema>'

/*
This is an example of how to use TSQL to setup test data whether it be for manual functional testing or automated testing.
Specifically this script insert and updates data to tables based on values in multiple other tables.
*/
