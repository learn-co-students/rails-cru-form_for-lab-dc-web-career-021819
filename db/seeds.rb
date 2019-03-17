# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Genre.destroy_all
Song.destroy_all
Artist.create(name: "A", bio: "Hi, I am A.")
Artist.create(name: "B", bio: "Hello, I am B.")
Genre.create(name: "pop")
Genre.create(name: "rap")
Song.create(name: "Hello", artist_id: 2, genre_id: 1)
Song.create(name: "HiHiHi", artist_id: 1, genre_id: 2)
