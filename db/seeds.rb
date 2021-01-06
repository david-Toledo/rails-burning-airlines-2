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
  date: "2021-01-02",
  to: "Sydney",
  from: "Perth"
)

flight3 = Flight.create!(
  flight_no: 3,
  date: "2021-01-03",
  to: "Melbourne",
  from: "Sydney"
)
flight4 = Flight.create!(
  flight_no: 4,
  date: "2021-01-04",
  to: "Sydney",
  from: "Melbourne"
)

flight5 = Flight.create!(
  flight_no: 5,
  date: "2021-01-05",
  to: "Sydney",
  from: "Brisbane"
)

flight6 = Flight.create!(
  flight_no: 6,
  date: "2021-01-06",
  to: "Brisbane",
  from: "Sydney"
)
flight7 = Flight.create!(
  flight_no: 7,
  date: "2021-01-07",
  to: "Perth",
  from: "Darwin"
)

flight8 = Flight.create!(
  flight_no: 8,
  date: "2021-01-08",
  to: "Darwin",
  from: "Perth"
)

flight9 = Flight.create!(
  flight_no: 9,
  date: "2021-01-09",
  to: "London",
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

reservation1 = Reservation.create!(booking_code: "AB1", seat_no: "2A")
reservation2 = Reservation.create!(booking_code: "AB2", seat_no: "3B")
reservation3 = Reservation.create!(booking_code: "AB3", seat_no: "4C")
reservation4 = Reservation.create!(booking_code: "AB4", seat_no: "5D")
reservation5 = Reservation.create!(booking_code: "AB5", seat_no: "2B")
reservation6 = Reservation.create!(booking_code: "AB6", seat_no: "3C")
reservation7 = Reservation.create!(booking_code: "AB7", seat_no: "4D")
reservation8 = Reservation.create!(booking_code: "AB8", seat_no: "5A")
reservation9 = Reservation.create!(booking_code: "AB9", seat_no: "2C")

reservation10 = Reservation.create!(booking_code: "AB10", seat_no: "2A")
reservation11 = Reservation.create!(booking_code: "AB11", seat_no: "3B")
reservation12 = Reservation.create!(booking_code: "AB12", seat_no: "4C")
reservation13 = Reservation.create!(booking_code: "AB13", seat_no: "5D")
reservation14 = Reservation.create!(booking_code: "AB14", seat_no: "2B")
reservation15 = Reservation.create!(booking_code: "AB15", seat_no: "3C")
reservation16 = Reservation.create!(booking_code: "AB16", seat_no: "4D")
reservation17 = Reservation.create!(booking_code: "AB17", seat_no: "5A")
reservation18 = Reservation.create!(booking_code: "AB18", seat_no: "2C")

reservation19 = Reservation.create!(booking_code: "AB19", seat_no: "2A")
reservation20 = Reservation.create!(booking_code: "AB20", seat_no: "3B")
reservation21 = Reservation.create!(booking_code: "AB21", seat_no: "4C")
reservation22 = Reservation.create!(booking_code: "AB22", seat_no: "5D")
reservation23 = Reservation.create!(booking_code: "AB23", seat_no: "2B")
reservation24 = Reservation.create!(booking_code: "AB24", seat_no: "3C")
reservation25 = Reservation.create!(booking_code: "AB25", seat_no: "4D")
reservation26 = Reservation.create!(booking_code: "AB26", seat_no: "5A")
reservation27 = Reservation.create!(booking_code: "AB27", seat_no: "2C")



puts "Added #{Reservation.count} reservations"

airplane1.flights << flight1 << flight2 << flight3
airplane2.flights << flight4 << flight5 << flight6
airplane3.flights << flight7 << flight8 << flight9

user1.reservations << reservation1 << reservation2 << reservation3 << reservation10 << reservation13 << reservation16 << reservation19 << reservation22 << reservation25
user2.reservations << reservation4 << reservation5 << reservation6 << reservation11 << reservation14 << reservation17 << reservation20 << reservation23 << reservation26
user3.reservations << reservation7 << reservation8 << reservation9 << reservation12 << reservation15 << reservation18 << reservation21 << reservation24 << reservation27

flight1.reservations << reservation1 << reservation2 << reservation3
flight2.reservations << reservation4 << reservation5 << reservation6
flight3.reservations << reservation7 << reservation8 << reservation9
flight4.reservations << reservation10 << reservation11 << reservation12
flight5.reservations << reservation13 << reservation14 << reservation15
flight6.reservations << reservation16 << reservation17 << reservation18
flight7.reservations << reservation19 << reservation20 << reservation21
flight8.reservations << reservation22 << reservation23 << reservation24
flight9.reservations << reservation25 << reservation26 << reservation27


puts "+++++++++++++++++++++++++++++++++++++++++++++++++"

puts "Airplane #{airplane1.serial_no} has the following flights: #{airplane1.flights.pluck(:flight_no).join(", ")}"
puts "Flight #{flight5.flight_no} has the following plane #{flight5.airplane.serial_no}"

puts "+++++++++++++++++++++++++++++++++++++++++++++++++"
puts "+++++++++++++++++++++++++++++++++++++++++++++++++"

puts "User #{user1.name} has the following reservations: #{user1.reservations.pluck(:booking_code).join(", ")}"
puts "Reservation #{reservation5.booking_code} has the following user #{reservation5.user.name}"

puts "+++++++++++++++++++++++++++++++++++++++++++++++++"
puts "+++++++++++++++++++++++++++++++++++++++++++++++++"

puts "Flight #{flight1.flight_no} has the following reservations: #{flight1.reservations.pluck(:booking_code).join(", ")}"
puts "Reservation #{reservation5.booking_code} has the following flight #{reservation5.flight.flight_no}"

puts "+++++++++++++++++++++++++++++++++++++++++++++++++"
