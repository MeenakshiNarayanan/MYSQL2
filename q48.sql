select Snum, Cnum
from orders 
where Cnum IN (select Cnum from customer where City ='London');
