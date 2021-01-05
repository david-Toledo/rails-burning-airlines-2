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
