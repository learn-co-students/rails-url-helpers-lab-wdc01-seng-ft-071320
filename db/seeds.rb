# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.destroy_all

Student.create([{first_name: "Steven", last_name: "Lee"}, {first_name: "Phil", last_name:"Aram"},
{first_name: "David", last_name: "Chung"}])