with dates as (   
  select NULL as dt from dual 
  union all  
  select ' ' as dt from dual 
  union all 
  select '2018/01/02 14:00:00' as dt from dual  
) 
select d.*, trunc(TO_TIMESTAMP(trim(d.dt), 'YYYY/MM/DD HH24:MI:SS')) 
from dates d
where trunc(TO_TIMESTAMP(trim(d.dt), 'YYYY/MM/DD HH24:MI:SS')) <= trunc(sysdate);