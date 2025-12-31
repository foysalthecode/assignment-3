# ASSIGNMENT-03

## INNER JOIN ⨝

> By this join method i join 3 table together to show customer_name from users table,vehicle_name from vehicles table,start & end date and status from bookings table

    SELECT
    booking_id,
    name AS customer_name,
    vehicles.vehicle_name,
    start_date,
    end_date,
    bookings.status
    FROM
    users
    INNER JOIN bookings ON users.user_id = bookings.user_id
    INNER JOIN vehicles ON vehicles.vehicle_id = bookings.vehicle_id

## EXISTS

> Retrive all vehicles that have never been booked

    select * from vehicles where not exists 
    (select vehicle_id from bookings where vehicles.vehicle_id = vehicle_id)

## WHERE

> Retrieve all available from database where vehicles type is car

    select * from vehicles where type = 'car'

## GROUP BY and HAVING

> by this GROUP BY & HAVING clause i Find the total number of bookings for each vehicle and display only the vehicles that have more than 2 bookings

    select vehicle_name,count(*) as total_bookings from vehicles
    inner join bookings on vehicles.vehicle_id = bookings.vehicle_id
    group by vehicle_name having count(*) > 2
