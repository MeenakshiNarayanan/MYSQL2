select Onum
from orders
where Snum= (select Snum from salespeople where Sname = 'Motika');

