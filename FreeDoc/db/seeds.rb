
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


c1 = City.create(name: "Tana")
p1 = Patient.create(first_name: "malade1", last_name: "koto", city: "c1")
d1 = Doctor.create(first_name: "rabe", last_name: "tokotany", zip_code: "d110", city: "c1" )
b1 = Appointments.create(date: DateTime.new(2019,1,18), Doctor: "d1", Patient: "p1", city: "c1")
  		




