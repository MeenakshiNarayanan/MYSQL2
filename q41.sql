select a.Sname, b.Sname
from salesperson a, salespeople b
where a.Snum > b.Snum AND
 a.City = b.City;
