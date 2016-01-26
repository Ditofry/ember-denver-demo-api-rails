# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

emburritos = [
  [ "Kyle Coberly", "Web app developer, business dork, amateur economist." ],
  [ "Brett Barrett", "Graduated with a bachelor's degree in Chemical and Biological Engineering, and now I do webdesign and developement. I love programming!" ]
]

emburritos.each do |name, introduction|
  Emburrito.create( name: name, introduction: introduction )
end
