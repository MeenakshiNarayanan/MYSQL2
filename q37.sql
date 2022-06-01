select a.Cname, b.Cname , a.Rating
from customer a, customer b
where a.Rating = b.Rating AND a.Cnum != b.Cnum AND a.Cnum < b.Cnum;
