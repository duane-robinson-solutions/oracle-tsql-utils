declare
  type rand_list is table of varchar2(62) index by pls_integer;
  source varchar2(62) := 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  perms  rand_list;
  source_variant varchar2(62);
begin
  for i in 1 .. 10 loop
    source_variant := null;
    for j in ( select rownum r from dual connect by level <= 52 order by dbms_random.value )
    loop
      source_variant := source_variant || substr(source,j.r,1);
    end loop;
    for j in ( select rownum r from dual connect by level <= 10 order by dbms_random.value )
    loop
      source_variant := source_variant || substr(source,52+j.r,1);
    end loop;
    perms(i) := source_variant;
    dbms_output.put_line(source_variant);
  end loop;
end;
/
select
  translate(
    'Duane Robinson',
    'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789',
    'ehZAFjmtYwWilTRDnCcLrvQqEpakKGPMxXyudVUNsoJOBfzSIbHg2163095784')
from dual;

create or replace
package maskdata is
  function rand_masks(p_size int default 255, p_refresh varchar2 default 'N',p_seed number default 0) return  sys.odcivarchar2list pipelined;
  function std_src return varchar2;
  function idx_entry(p_idx int, p_size int default 255, p_refresh varchar2 default 'N',p_seed number default 0) return varchar2;
  function mask(p_input varchar2) return varchar2;
end;
/
create or replace
package body maskdata is
  perms sys.odcivarchar2list := sys.odcivarchar2list();

procedure init(p_size int,p_seed int) is
  source varchar2(62) := 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  source_variant varchar2(62);
begin
  dbms_random.seed(p_seed);
  perms.delete;
  perms.extend(p_size);
  for i in 1 .. p_size loop
    source_variant := null;
    for j in ( select rownum r from dual connect by level <= 52 order by dbms_random.value )
    loop
      source_variant := source_variant || substr(source,j.r,1);
    end loop;
    for j in ( select rownum r from dual connect by level <= 10 order by dbms_random.value )
    loop
      source_variant := source_variant || substr(source,52+j.r,1);
    end loop;
    perms(i) := source_variant;
--      dbms_output.put_line(source_variant);
  end loop;
end;

function rand_masks(p_size int default 255, p_refresh varchar2 default 'N',p_seed number default 0) return sys.odcivarchar2list pipelined is
begin
  if perms.count < p_size or p_refresh in ('Y','y') then
    init(p_size,p_seed);
  end if;

  for i in 1 .. p_size
  loop
    pipe row ( perms(i));
  end loop;

  return;
end;

function std_src return varchar2 is
begin
   return 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
end;

function idx_entry(p_idx int, p_size int default 255, p_refresh varchar2 default 'N',p_seed number default 0) return varchar2 is
begin
  if perms.count < p_size or p_refresh in ('Y','y') then
    init(p_size,p_seed);
  end if;
  return perms(p_idx);
end;

function mask(p_input varchar2) return varchar2 is
begin
  return translate(p_input,maskdata.std_src,maskdata.idx_entry(ascii(p_input)));
end;

end;
/

create table tbl ( prikey int, n varchar2(50));

insert into tbl values (1,'Christian Pulishc');

insert into tbl values (2,'Tim Weah');

insert into tbl values (3,'Gio Reyna');

insert into tbl values (4,'Tyler Adams');

insert into tbl values (5,'Weston McKinney');

insert into tbl values (6,'Zac Stephan');

insert into tbl values (7,'Ricardo Pepi');

select prikey, n, maskdata.mask(n) diddled
from tbl ;p
