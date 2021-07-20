# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Employee.create(firstname: "Tom", lastname: "Baldwin");
Employee.create(firstname: "Sam", lastname: "Harper");
Employee.create(firstname: "Samantha", lastname: "Wong");
Employee.create(firstname: "Jill", lastname: "Smith");

Management.create(firstname: "James", lastname: "Pickens");
Management.create(firstname: "Sam", lastname: "Harrison");

Role.create(role: "Software Engineer");
Role.create(role: "Project Manager");
Role.create(role: "Security Analyst");
Role.create(role: "Product Owner");