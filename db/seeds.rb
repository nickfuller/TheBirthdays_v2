# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Act.destroy_all
Album.destroy_all
Blog.destroy_all
User.destroy_all
Gig.destroy_all
Song.destroy_all
Venue.destroy_all

Act.create(name: "Webelos", url: "http://www.myspace.com/thewebelosmusic")
Act.create(name: "The Color Bars", url: "http://www.thecolorbars.com/")
Act.create(name: "Aaron Mannino", url: "http://aaronmannino.com/")
Act.create(name: "PWRFL PWR", url: "http://www.myspace.com/pwrflpower/music")

Album.create(title: "A Spirited Rendition", date: "2010-04-01", cover_art: "A_Spirited_Rendition.cover_art")
Album.create(title: "Pomes", date: "2005-03-04", cover_art: "Embeum.cover_art")
Album.create(title: "Ooey", date: "2003-04-22", cover_art: "Ooey.cover_art")
Album.create(title: "Embeum", date: "2002-07-12", cover_art: "Embeum.cover_art")
Album.create(title: "In Need of Drums", date: "2001-11-16", cover_art: "In_Need_of_Drums.cover_art")

Blog.create(title: "Site in a Conception Stage", body: "We are super excited to be launching our website 15 years late in 10 years. Please be patient as we work through our issues!", author: "Nick")
Blog.create(title: "Seed Files", body: "This text is being generated from the band to the world, because of a little thing in Rails called the seeds file in the db directory. Free tips from your favorite band!", author: "Nick")
Blog.create(title: "Derp Sperk", body: "I erb a terp of sperk curled derp sperk. Urt gurts lurk therz. And urt sounds lurk therz.", author: "Nolan")

users = ["Nick Fuller", "Nolan Ericson", "Michael Nunan", "Aaron Wahlborg", "Celine Ui", "Lindsay Wahlborg", "Amanda Chase", "Kevin McCabe", "Courtland Premo", "Sean Cameron"]
users.each do |user|
	User.create(name: user, 
		email: user.first.downcase+"_"+user.split(" ").last.downcase+"@gmail.com",
		password: user.split(" ").last.upcase+user.split(" ").first.downcase)
end

Gig.create(date: "2012-12-01 19:00", cover: "10")
Gig.create(date: "2012-11-11 17:30", cover: "12")
Gig.create(date: "2007-10-25 22:00", cover: "6")
Gig.create(date: "2007-10-09 19:00", cover: "5")

songs = ["Bliss in a Basket", "Don't Hate Me", "Nix Nix", "Here I Go Again", "Real Bungee", "The Sayso", "Far Behind"]
songs.each do |song| 
	Song.create(title: song, 
		audio: "#{song.split(" ").join("_")}.mp3", 
		lyric: "#{song.split(" ").join("_")}.lyric", 
		chart: "#{song.split(" ").join("_")}.chart", 
		tablature: "#{song.split(" ").join("_")}.tablature", 
		album_id: Album.find_by_title("A Spirited Rendition").id)
end

Venue.create(name: "The Empty Bottle", street: "1035 North Western Avenue", city: "Chicago", state: "IL", zip: "60622", url: "http://www.emptybottle.com/")
Venue.create(name: "High Dive", street: "513 North 36th Street", city: "Seattle", state: "WA", zip: "98103", url: "http://www.highdiveseattle.com/")
Venue.create(name: "The Comet", street: "922 East Pike Street", city: "Seattle", state: "WA", zip: "98122", url: "http://www.comettavern.com/")
Venue.create(name: "The Crocodile", street: "2200 2nd Avenue", city: "Seattle", state: "WA", zip: "98121", url: "http://www.thecrocodile.com/")