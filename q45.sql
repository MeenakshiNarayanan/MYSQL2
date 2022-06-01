select Onum, Sname, Cname, AMT
from orders AS o, salespeople AS s, customer c
where o.Snum = s.Snum AND  o.Cnum = c.Cnum AND
o.Snum= (select Snum from  orders
 where Cnum = (select Cnum from  customer 
 where Cname = 'Hoffman'));
 
 