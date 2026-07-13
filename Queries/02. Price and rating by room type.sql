-- Average Price and rating By Room Type
select room_type,round(avg(price),2) as AveragePrice,
round(avg(cast(review_scores_rating as float))*5/100,2) as AvgRating
from Listings
group by room_type
