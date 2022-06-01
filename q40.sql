select distinct a.Cname
from customer a, customer b
where a.Snum = b.Snum AND a.Cnum != b.Cnum;