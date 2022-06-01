select Cname, City
from customer
where Rating = (select Rating from customer where Cname= 'Hoffman') AND Cname != 'Hoffman';
