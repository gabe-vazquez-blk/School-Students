# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

School.create!(name: "Flatiron School", address:"11 Broadway")
School.create!(name: "NYU", address:"New York, NY 10003")
School.create!(name: "John Jay", address:"524 W 59th St, New York, NY 10019")
School.create!(name: "City College", address:"160 Convent Ave, New York, NY 10031")
School.create!(name: "Columbia University", address:"116th St & Broadway, New York, NY 10027")

Student.create!(name: "Gabe", age: 21, school_id: School.first.id)
Student.create!(name: "Emi", age: 22, school_id: School.second.id)
Student.create!(name: "Will", age: 23, school_id: School.third.id)
Student.create!(name: "Amy", age: 24, school_id: School.fourth.id)
Student.create!(name: "Kevin", age: 25, school_id: School.fifth.id)
