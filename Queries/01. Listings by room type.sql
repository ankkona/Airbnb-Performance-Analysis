-- Listings Trend By Room Type
select room_type,count(listing_id)  as total_listings
from Listings
group by room_type
order by total_listings desc
