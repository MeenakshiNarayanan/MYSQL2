select *
from orders
where AMT >(select AVG(AMT) from orders
where Odate = '1994-10-03');
