---- 1. WHERE + BETWEEN: trips costing between 20 and 30
SELECT Trip_id, FareAmount, Distance, Status 
FROM Trip 
WHERE FareAmount BETWEEN 20 AND 30;

---display the Customer id and the number of stars that has the highesr number
Select Customer_id,numStars from has_rating WHERE numStars = (SELECT MAX (numStars)from has_rating);


--  UNION: list all users from customors and drivers
SELECT First_name, Last_name, Email, 'Customer' AS User_Type FROM Customer
UNION
SELECT First_name, Last_name, Email, 'Driver' AS User_Type FROM Driver;

----hoe many customors has not paid 
Select COUNT (*) from payment WHERE status = 'Not Paid';

-- Shows the shift_time of customer service employees who are Active
SELECT shift_time, status
FROM customer_service
GROUP BY shift_time, status
HAVING status = 'Active';

-- Displays drivers and the vehicles they use
SELECT
    Driver.user_id,
    Driver.first_name,
    Vehicle.vehicle_id,
    Vehicle.model,
    Vehicle.plate_on
FROM Driver
JOIN Vehicle
    ON Driver.user_id = Vehicle.user_id;

-- Updates the shift_time to 'Evening' for the employee with User_id = 201
UPDATE Customer_Service
SET Shift_time = 'Evening'
WHERE User_id = 201;
COMMIT;

-- Deletes the Has_Rating row with trip_id = 2003
DELETE FROM Has_Rating
WHERE trip_id = 2003;

COMMIT;


