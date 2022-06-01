select Cnum, Cname from customer
where Cnum> (select Snum +1000 from salespeople where Sname = 'Serres');