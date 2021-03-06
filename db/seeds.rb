# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Location.create name: "Cafe 3", value: "Cafe 3", menu: "http://caldining.berkeley.edu/menus/cafe3", address: "2400 Durant Ave", picture: "http://i.imgur.com/x0o9ViX.jpg"
Location.create name: "Crossroads", value: "Crossroads", menu: "http://caldining.berkeley.edu/menus/crossroads", address: "2415 Bowditch Street", picture: "http://i.imgur.com/4MasTM2.jpg"
Location.create name: "Clark Kerr Campus", value: "Clark Kerr Campus", menu: "http://caldining.berkeley.edu/menus/clark-kerr-campus", address: "2610 Warring Street", picture: "http://i.imgur.com/7j9wEcR.jpg"
Location.create name: "Foothill", value: "Foothill", menu: "http://caldining.berkeley.edu/menus/foothill", address: "2700 Hearst Ave", picture: "http://i.imgur.com/qWv2xlI.jpg"
