-- Reviews By Year
select DATEPART(year,date) as Year,count(review_id) as TotalReviews
from Reviews
group by DATEPART(year,date)
order by Year
