# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
p = Project.create(name:"Ironhack", description:"Such a good place.")
e = Entry.new(hours:2, minutes:45, date: Time.now, comment: "Ate Shack Burger.")
e.project = p
e.save
e = Entry.new(hours:2, minutes:45, date: Time.now, comment: "Ate Shack Burger.")
e.project = p
e.save

p = Project.create(name:"Boston Market", description:"So tasty.")
e = Entry.new(hours:5, minutes:45, date: Time.now, comment: "Ate Shack Burger.")
e.project = p
e.save

p = Project.create(name:"Pipeline", description:"So fancy.")
e = Entry.new(hours:1, minutes:45, date: Time.now, comment: "Ate Shack Burger.")
e.project = p
e.save

p = Project.create(name:"Brickell", description:"So much good food.")
e = Entry.new(hours:7, minutes:45, date: Time.now, comment: "Ate Shack Burger.")
e.project = p
e.save

p = Project.create(name:"Miami Beach", description:"So overpriced.")
e = Entry.new(hours:12, minutes:45, date: Time.now, comment: "Ate Shack Burger.")
e.project = p
e.save

p = Project.create(:name => "Shake Shack")
e = Entry.new(hours:11, minutes:45, date: Time.now, comment: "Ate Shack Burger.")
e.project = p
e.save