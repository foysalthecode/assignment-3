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

