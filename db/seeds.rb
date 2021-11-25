# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

song1 = Song.where(title: 'goosebumps').first
song1.delete if song1
songs = Song.create([title: 'goosebumps', artist: 'Travis Scott', album: 'Birds In The Trap Sing McKnight', duration: '4:04'])
