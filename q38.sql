select Cname, Sname
from salespeople, customer
where Sname IN (select Sname from salespeople
 where rownum <=3)
ORDER by Cname;