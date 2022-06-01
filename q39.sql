
select Cname
from customer
where City in (select City from customer,orders where customer.Cnum=orders.Cnum AND orders.Snum in (select Snum from salespeople where Sname='Serres')); 
