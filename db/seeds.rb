# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'
require 'faker'


CSV.foreach("names.csv", headers: true) do |row|
  Name.create(first: row.field('name'), meaning: row.field('content'), 
              phrase: Faker::Company.bs, occupation: Faker::Name.title)
end