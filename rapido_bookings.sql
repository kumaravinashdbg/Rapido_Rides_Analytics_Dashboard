create database rapido_bookings;
use rapido_bookings;

select * from rapido_rides;

alter table rapido_rides 
rename column `ï»¿Date` to Dates;

-- Total Bookings
select count(*) as total_bookings from rapido_rides;


-- Total Unique Customers
select count(distinct `Customer ID`) as unique_customer from rapido_rides;


-- Booking Status Analysis
select `Booking Status`, count(*) as Total_Booking
from rapido_rides group by `Booking Status`
order by Total_Booking desc;


-- Booking Status Percentage
select `Booking Status`, count(*) as Total_Booking,
round(count(*)*100/(select count(*) from rapido_rides),2) as Booking_Percentage
from rapido_rides group by `Booking Status` 
order by Booking_Percentage desc;


-- Completion Rate in Percentage
select count(case 
        when `Booking Status` = 'Completed' 
        then 1 end) as completed_rides,
		count(*) as total_bookings,
		round(count(case 
		when `Booking Status` = 'Completed' 
		then 1 
        end) * 100.0 / COUNT(*),2) as completion_percentage
from rapido_rides;



-- Cancellation Rate in Percentage
select count(case 
            when `Booking Status` in ('Cancelled by Customer','Cancelled by Driver')
            then 1 end) as cancel_rides,
			COUNT(*) as total_bookings,
			ROUND(COUNT(
            case when `Booking Status` in ('Cancelled by Customer','Cancelled by Driver')
			then 1 end) * 100.0 / COUNT(*),2) as cancellation_percentage
from rapido_rides;



-- Customer Cancellation Rate in Percentage
select count(case 
        when `Booking Status` = 'Cancelled by Customer' 
        then 1 end) as cancel_by_customer,
		count(*) as total_bookings,
		round(count(case 
		when `Booking Status` = 'Cancelled by Customer' 
		then 1 
        end) * 100.0 / COUNT(*),2) as cancellation_percentage
from rapido_rides;



-- Driver Cancellation Rate in Percentage
select count(case 
        when `Booking Status` = 'Cancelled by Driver' 
        then 1 end) as cancel_by_driver,
		count(*) as total_bookings,
		round(count(case 
		when `Booking Status` = 'Cancelled by Driver' 
		then 1 
        end) * 100.0 / COUNT(*),2) as cancellation_percentage
from rapido_rides;




-- Vehicle Type Analysis
select `Vehicle Type`, count(*) as total_booking
from rapido_rides 
group by `Vehicle Type`
order by total_booking desc;





-- Vehicle wise Complete Rides
select `Vehicle Type`, count(*) as complete_rides
from rapido_rides
where `Booking Status` = 'Completed'
group by `Vehicle Type`
order by complete_rides desc;




-- Vehicle Wise Revenue
select `Vehicle Type`, sum(`Booking Value`) as total_revenue
from rapido_rides
group by `Vehicle Type`
order by total_revenue desc;




-- Average Booking Value by Vehicle
select `Vehicle Type`, round(avg(`Booking Value`),2) as avg_booking_value
from rapido_rides
where `Booking Status` = "Completed"
group by `Vehicle Type`
order by avg_booking_value desc;  



-- Average Ride Distance by Vehicle
select `Vehicle Type`, round(avg(`Ride Distance`),2) as avg_distance
from rapido_rides
where `Booking Status` = "Completed"
group by `Vehicle Type`
order by avg_distance desc;



-- Revenue by Payment Method
select `Payment Method`, sum(`Booking Value`) as total_revenue
from rapido_rides
where `Booking Status` = "Completed"
group by `Payment Method`
order by total_revenue desc; 



-- Booking Count by Payment Method
select `Payment Method`, count(*) as total_booking
from rapido_rides
where `Booking Status` = "Completed"
group by `Payment Method`
order by total_booking desc;


-- Top Pickup Location
select `Pickup Location`, count(*) as total_booking
from rapido_rides
group by `Pickup Location`
order by total_booking desc
limit 10;


-- Top Drop Location
select `Drop Location`, count(*) as total_booking
from rapido_rides
group by `Drop Location`
order by total_booking desc
limit 10;


-- Most Popular Routes
select `Pickup Location`, `Drop Location`,
count(*) as total_booking
from rapido_rides
group by `Pickup Location`,`Drop Location`
order by total_booking desc
limit 10;


-- Customer Cancellation Reason
select `Reason for cancelling by Customer`, count(*) as cancellation_count
from rapido_rides
where `Booking Status` = "Cancelled by Customer" 
group by `Reason for cancelling by Customer`
order by cancellation_count desc;


-- Driver Cancellation Reason
select `Driver Cancellation Reason`, count(*) as cancellation_count
from rapido_rides
where `Booking Status` = "Cancelled by Driver"
group by `Driver Cancellation Reason`
order by cancellation_count desc;


-- Incomplete Ride Reason
select `Incomplete Rides Reason`, count(*) as incomplete_count
from rapido_rides
where `Booking Status` = "Incomplete"
group by `Incomplete Rides Reason`
order by incomplete_count desc;


-- Peak Booking Hours
select Hour, count(*) as total_booking
from rapido_rides
group by hour
order by total_booking desc;


-- Booking by Days
select Day_Name, count(*) as total_booking
from rapido_rides
group by Day_Name
order by total_booking desc;


-- Monthly Booking Trend
select Year, Month, Month_Name, count(*) as total_booking
from rapido_rides
group by Year, Month, Month_Name
order by Year, Month;


-- Monthly Renvenue
select Year, Month, Month_Name, sum(`Booking Value`) as total_revenue
from rapido_rides
where `Booking Status` = "Completed"
group by Year, Month, Month_Name
order by Year, Month;


-- Average Driver Rating by Vehicle
select `Vehicle Type`, round(avg(`Driver Ratings`),2) as avg_driver_rating
from rapido_rides
where `Booking Status` = "Completed"
group by `Vehicle Type`
order by avg_driver_rating desc;


-- Average Customer Rating by Vehicle
select `Vehicle Type`, round(avg(`Customer Rating`),2) as avg_customer_rating
from rapido_rides
where `Booking Status` = "Completed"
group by `Vehicle Type`
order by avg_customer_rating desc;



-- Vehicle Cancellation Performance
select `Vehicle Type`, count(*) as total_booking,
		sum(case
				when `Booking Status` = "Cancelled by Driver"
                then 1 else 0 end) as driver_cancellation,
		round(sum(case
					 when `Booking Status` = "Cancelled by Driver"
					then 1 else 0 end)*100 / count(*),2) as cancellation_rate
		from rapido_rides
        group by `Vehicle Type`
        order by cancellation_rate desc;
        
        

-- Location Wise Cancellation
select `Pickup Location`, count(*) as total_booking,
		sum(case
				when `Booking Status` = "Cancelled by Customer"
                then 1 else 0 end) as customer_cancellation,
		sum(case
				when `Booking Status` = "Cancelled by Driver"
                then 1 else 0 end) as driver_cancellation
		from rapido_rides
        group by `Pickup Location`
        order by total_booking desc;
        

-- Top Customers Revenues
select `Customer ID`, count(*) as complete_rides,
sum(`Booking Value`) as total_revenue
from rapido_rides
where `Booking Status` = "Completed"
group by `Customer ID`
order by total_revenue desc
limit 10;


-- Repeat Customers
select `Customer ID`, count(*) as total_booking
from rapido_rides
group by `Customer ID`
having count(*)>1
order by total_booking desc;



-- Customer Segmentation
select `Customer ID`, count(*) as total_booking,
case when count(*) = 1 then "One Time Customer"
	when count(*) between 2 and 5 then "Occasional Customer"
    else "Frequent Customer"
    end as customer_segment
from rapido_rides
group by `Customer ID`;



-- High Value Rides
select Ride_ID, `Booking ID`, `Customer ID`,
 `Vehicle Type`, `Booking Value`, `Ride Distance`
 from rapido_rides
 where `Booking Status` = "Completed"
 order by `Booking Value` desc
 limit 10;
 
 
 -- Revenue Per Kilometer
 select `Vehicle Type`, 
 round(
	sum(`Booking Value`) /
    sum(`Ride Distance`),2) as revenue_per_km
from rapido_rides
where `Booking Status` = "Completed"
group by `Vehicle Type`
order by revenue_per_km desc;




select current_user();