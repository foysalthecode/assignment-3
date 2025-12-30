-- INNER JOIN

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


-- EXIST

select * from vehicles where status != 'rented'

-- WHERE

select * from vehicles where type = 'car'

-- GROUP BY $ HAVING

select vehicle_name,count(*) as total_bookings from vehicles
inner join bookings on vehicles.vehicle_id = bookings.vehicle_id group by vehicle_name having count(*) > 2