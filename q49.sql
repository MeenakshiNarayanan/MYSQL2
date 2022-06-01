select Snum, Cnum
from orders
where Snum IN (select Snum from customer  where City = 'London');
