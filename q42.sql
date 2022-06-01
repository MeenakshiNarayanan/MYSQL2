select c.Cname, a.Onum, b.Onum
from orders a, orders b, customer c
where a.Cnum = b.Cnum AND
a.Onum > b.Onum AND
c.Cnum = a.Cnum;
