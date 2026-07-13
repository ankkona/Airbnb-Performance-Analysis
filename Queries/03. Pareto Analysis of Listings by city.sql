-- Pareto Analysis of Listings By City
select city,count(listing_id) as totalListings,
sum(count(listing_id))over(order by count(listing_id) desc) as cumulative,
sum(count(listing_id))over(order by count(listing_id) desc)*100/
sum(count(listing_id))over() as cumulativepct
from Listings
group by city