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
Specialty.destroy_all

10.times do 
  doctor = Doctor.create(first_name: Faker::OnePiece.character, last_name: Faker::OnePiece.character, postal_code: Faker::Number.number(5), city_id: (1+rand(5)))
  patient = Patient.create(first_name: Faker::OnePiece.character ,last_name: Faker::Zelda.game, city_id: (1+rand(5)))
  appointment = Appointment.create(date: Faker::Date.forward(10), doctor_id: (1+rand(5)), patient_id: (1+rand(5)), city_id: (1+rand(5)))
  city = City.create(name: Faker::OnePiece.character)
  specialty = Specialty.create(name: Faker::OnePiece.character, doctor_id: (1+rand(5)))
end