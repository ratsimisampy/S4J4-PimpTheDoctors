# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


def seed_patient
    30.times do
        @patient = Patient.create!(first_name: Faker::Company.name, last_name: Faker::Name.name )
    end
end

def seed_doctor
    10.times do
        @doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
    end
end

def seed_appointment
    15.times do
        @appointment = Appointment.create!(appointment_date: Faker::Time.between(DateTime.now - 1, DateTime.now), doctor_id: Faker::Number.between(Doctor.first.id, Doctor.last.id), patient_id: Faker::Number.between(Patient.first.id, Patient.last.id), speciality_id: Faker::Number.between(Speciality.first.id, Speciality.last.id))
       end
end

def seed_city
    10.times do
        @City = City.create!(name: Faker::Address.city, postal_code: Faker::Address.postcode )
    end
end

def seed_speciality
    10.times do
        @Speciality = Speciality.create!(name: Faker::Job.title )
    end
end

seed_patient
seed_doctor

seed_city   
seed_speciality
seed_appointment