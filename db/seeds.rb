# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
a = Artist.create(name: "Radiohead", bio: "Very mopey")
g = Genre.create(name: "Doomercore")
Song.create(name: "Something Mopey", artist_id: a.id, genre_id: g.id)

a2 = Artist.create(name: "The Smiths", bio: "Just as mopey")
g2 = Genre.create(name: "Classic Sadboi")
Song.create(name: "Major Key Mopes", artist_id: a2.id, genre_id: g2.id)
