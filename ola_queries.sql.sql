CREATE DATABASE OLA;
USE OLA;
#1. Retrieve all successful bookings:
 CREATE VIEW Successful_Bookings AS
 SELECT * FROM bookings 
 WHERE Booking_Status = 'Success';

 
#2. Find the average ride distance for each vehicle type:
 CREATE VIEW ride_distance_for_each_vehicle AS
 SELECT Vehicle_Type, AVG(Ride_Distance)
 AS avg_distance FROM bookings
 GROUP BY Vehicle_Type;

 
#3. Get the total number of cancelled rides by customers:
 CREATE VIEW canceled_rides_by_customer AS
 SELECT COUNT(*) FROM bookings
 WHERE Booking_Status = 'Canceled by Customer';

 
#4. List the top 5 customers who booked the highest number of rides:
 CREATE VIEW top_5_customers AS
 SELECT Customer_ID, COUNT(Booking_ID) AS Total_Rides
 FROM bookings
 GROUP BY Customer_ID
 ORDER BY Total_Rides DESC LIMIT 5;

 
#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
 CREATE VIEW rides_cancelled_by_drivers_PC_issues AS
 SELECT COUNT(*) 
 FROM bookings
 WHERE canceled_rides_by_driver = 'Personal & Car related issue';


#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
 CREATE VIEW Max_Min_Driver_Rating AS
 SELECT MAX(driver_ratings) AS max_rating,
 MIN(driver_ratings) AS min_rating
 FROM bookings WHERE vehicle_type = 'Prime Sedan';

 
#7. Retrieve all rides where payment was made using UPI:
 CREATE VIEW UPI_method AS
 SELECT * FROM bookings
 WHERE payment_method = 'UPI';


#8. Find the average customer rating per vehicle type:
CREATE VIEW Avg_Customer_Rating AS
SELECT Vehicle_type,AVG(customer_rating) as avg_rating
FROM bookings
GROUP BY Vehicle_type;

 
#9. Calculate the total booking value of rides completed successfully:
 CREATE VIEW Total_Value AS
 SELECT SUM(booking_value) AS total_booking_value
 FROM bookings
 WHERE booking_status = 'Success';

 
#10. List all incomplete rides along with the reason:
 CREATE VIEW Rides_Incomplete_Reason AS
 SELECT booking_id,incomplete_rides_reason 
 FROM bookings
 WHERE incomplete_rides = 'Yes';




#1. Retrieve all successful bookings:
 SELECT * FROM Successful_Bookings;
 
#2. Find the average ride distance for each vehicle type:
 SELECT * FROM ride_distance_for_each_vehicle;
 
#3. Get the total number of cancelled rides by customers:
 SELECT * FROM canceled_rides_by_customer;
 
#4. List the top 5 customers who booked the highest number of rides: 
 SELECT * FROM top_5_customers;
 
#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
 SELECT * FROM rides_cancelled_by_drivers_PC_issues;
 
#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
 SELECT * FROM Max_Min_Driver_Rating;
 
#7. Retrieve all rides where payment was made using UPI:
 SELECT * FROM UPI_method;
 
#8. Find the average customer rating per vehicle type:
 SELECT * FROM Avg_Customer_Rating;
 
#9. Calculate the total booking value of rides completed successfully:
 SELECT * FROM Total_Value;
 
#10. List all incomplete rides along with the reason:
 SELECT * FROM Rides_Incomplete_Reason;