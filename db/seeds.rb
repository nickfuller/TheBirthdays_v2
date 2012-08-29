# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# GIG CLASS SEED GENERATE
Gig.create(date: "2012-12-01 19:00", cover: "10")
Gig.create(date: "2012-11-11 17:30", cover: "12")
Gig.create(date: "2007-10-25 22:00", cover: "6")
Gig.create(date: "2007-10-09 19:00", cover: "5")


# ALBUM CLASS SEED GENERATE
Album.create(title: "A Spirited Rendition", date: "2010-04-01", cover_art: "A_Spirited_Rendition.cover_art")
Album.create(title: "Pomes", date: "2005-03-04", cover_art: "Embeum.cover_art")
Album.create(title: "Ooey", date: "2003-04-22", cover_art: "Ooey.cover_art")
Album.create(title: "Embeum", date: "2002-07-12", cover_art: "Embeum.cover_art")
Album.create(title: "In Need of Drums", date: "2001-11-16", cover_art: "In_Need_of_Drums.cover_art")


# SONG CLASS SEED GENERATE
songs = ["Bliss in a Basket", "Don't Hate Me", "Nix Nix", "Here I Go Again", "Real Bungee", "The Sayso", "Far Behind"]
songs.each do |song| 
	Song.create(title: song, 
		audio: "#{song.split(" ").join("_")}.mp3", 
		lyric: "#{song.split(" ").join("_")}.lyric", 
		chart: "#{song.split(" ").join("_")}.chart", 
		tablature: "#{song.split(" ").join("_")}.tablature") 
end


# FAN CLASS SEED GENERATE
fans = ["Nick Fuller", "Nolan Ericson", "Michael Nunan", "Aaron Wahlborg", "Celine Ui", "Lindsay Wahlborg", "Amanda Chase", "Kevin McCabe", "Courtland Premo", "Sean Cameron"]
fans.each do |fan|
	Fan.create(name: fan, 
		email: fan.first.downcase+"_"+fan.split(" ").last.downcase+"@gmail.com",
		password: fan.split(" ").last.upcase+fan.split(" ").first.downcase)
end


# BLOG CLASS SEED GENERATE
Blog.create(title: "Site in a Conception Stage", body: "We are super excited to be launching our website 15 years late in 10 years. Please be patient as we work through our issues!", series: "by Nick")
Blog.create(title: "Seed Files", body: "This text is being generated from the band to the world, because of a little thing in Rails called the seeds file in the db directory. Free tips from your favorite band!", series: "by Nick")
Blog.create(title: "Derp Sperk", body: "I erb a terp of sperk curled derp sperk. Urt gurts lurk therz. And urt sounds lurk therz.", series: "by Nolan")


# ACT CLASS SEED GENERATE
Act.create(name: "Webelos", url: "http://www.myspace.com/thewebelosmusic")
Act.create(name: "The Color Bars", url: "http://www.thecolorbars.com/")
Act.create(name: "Aaron Mannino", url: "http://aaronmannino.com/")
Act.create(name: "PWRFL PWR", url: "http://www.myspace.com/pwrflpower/music")


# VENUE CLASS SEED GENERATE
Venue.create(name: "The Empty Bottle", street: "1035 North Western Avenue", city: "Chicago", state: "IL", zip: "60622", url: "http://www.emptybottle.com/")
Venue.create(name: "High Dive", street: "513 North 36th Street", city: "Seattle", state: "WA", zip: "98103", url: "http://www.highdiveseattle.com/")
Venue.create(name: "The Comet", street: "922 East Pike Street", city: "Seattle", state: "WA", zip: "98122", url: "http://www.comettavern.com/")
Venue.create(name: "The Crocodile", street: "2200 2nd Avenue", city: "Seattle", state: "WA", zip: "98121", url: "http://www.thecrocodile.com/")