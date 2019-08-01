# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all


10.times do
  city = City.create!(name: Faker::Nation.capital_city)
end

10.times do
  doctor = Doctor.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: rand(1000..9999))
  doctor.city = City.all.sample
  doctor.save
end

30.times do
  patient = Patient.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  patient.city = City.all.sample
  patient.save
end

50.times do
  appointment = Appointment.new(date: Faker::Time.forward(14, :all))
  appointment.doctor = Doctor.all.sample
  appointment.patient = Patient.all.sample
  appointment.city = City.all.sample
  appointment.save
end


10.times do
  specialty = Specialty.create!(name: Faker::Science.element)
end

50.times do
  join = JoinTableDoctorSpecialty.new
  join.doctor = Doctor.all.sample
  join.specialty = Specialty.all.sample
  join.save
end