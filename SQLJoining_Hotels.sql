
--Join hotel data from all three years

with hotels as (
Select * from rapp..Hotel2018
union
Select * from rapp..Hotel2019
union
Select * from rapp..Hotel2020)

-------------------------------------------------------------------------------------

-- What is the revenue for each year? Is it growing?

select 
arrival_date_year,
sum((stays_in_week_nights+stays_in_weekend_nights)* adr) as revenue
from hotels
group by arrival_date_year


--------------------------------------------------------------------------------------

--Join hotel data from all three years

with hotels as (
Select * from rapp..Hotel2018
union
Select * from rapp..Hotel2019
union
Select * from rapp..Hotel2020)

-- What is the revenue for each year by hotel type? Is it growing?
select 
arrival_date_year,
hotel,
sum((stays_in_week_nights+stays_in_weekend_nights)* adr) as revenue
from hotels
group by arrival_date_year, hotel 

---------------------------------------------------------------------------------------

--Join hotel data from all three years
with hotels as (
Select * from rapp..Hotel2018
union
Select * from rapp..Hotel2019
union
Select * from rapp..Hotel2020)

--Join hotel data with market segment and meal costs
select * from Hotels
left join rapp..Hotel_market_segment
on hotels.market_segment = Hotel_market_segment.market_segment
left join rapp..meal_cost$
on meal_cost$.meal = hotels.meal
