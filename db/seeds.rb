# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Song.destroy_all
Genre.destroy_all

20.times do
    Artist.create(name: Faker::Music.band, bio: Faker::Quote.famous_last_words)
    Song.create(name: Faker::Music.album)
    Genre.create(artist_id: Artist.all.sample.id, song_id: Song.all.sample.id, name: Faker::Music.genre)
end
