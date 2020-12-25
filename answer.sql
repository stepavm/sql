select s.Sys_Name, (select count(*) from Message m where s.id=m.sysid) as Count 
from Dictionary d, System s, Message m where d.code in ('SYSTEM_OUT', 'SYSTEM_IN') 
and d.sysid = s.id 
and m.sysid=s.id
group by Count;

##############################################################

<pre>
+-----------------+-------+
| Sys_Name        | Count |
+-----------------+-------+
| Система2        |     1 |
| Система1        |     3 |
+-----------------+-------+
</pre>

