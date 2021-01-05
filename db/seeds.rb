# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airplane.destroy_all

airplane1 = Airplane.create!(
  serial_no: 400,
  row: 10,
  column: 4
)

airplane2 = Airplane.create!(
  serial_no: 600,
  row: 10,
  column: 6
)

airplane3 = Airplane.create!(
  serial_no: 800,
  row: 10,
  column: 8
)

puts "Added #{Airplane.count} airplanes"

#====================================================================


Flight.destroy_all

flight1 = Flight.create!(
  flight_no: 1,
  date: "2021-01-01",
  to: "Perth",
  from: "Sydney"
)

flight2 = Flight.create!(
  flight_no: 2,
  date: "2021-01-01",
  to: "Perth",
  from: "Sydney"
)

flight3 = Flight.create!(
  flight_no: 3,
  date: "2021-01-01",
  to: "Perth",
  from: "Sydney"
)

puts "Added #{Flight.count} flights"





#====================================================================


User.destroy_all

user1 = User.create!(name: "David")

user2 = User.create!(name: "Kyle")

user3 = User.create!(name: "Stacey")



puts "Added #{User.count} users"





#====================================================================

Reservation.destroy_all

reservation1 = Reservation.create!(booking_code: "AB1")

reservation2 = Reservation.create!(booking_code: "AB2")

reservation3 = Reservation.create!(booking_code: "AB3")



puts "Added #{Reservation.count} reservations"

airplane1.flights << flight1 << flight2 << flight3
