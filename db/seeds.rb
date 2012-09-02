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
Comment.destroy_all
Contact.destroy_all
Gig.destroy_all
Song.destroy_all
Tag.destroy_all
User.destroy_all
Venue.destroy_all

# ACT---------------------------------------------------------------------------

puts "Creating Acts..."

Act.create(name: "Webelos", url: "http://www.myspace.com/thewebelosmusic")
Act.create(name: "The Color Bars", url: "http://www.thecolorbars.com/")
Act.create(name: "Aaron Mannino", url: "http://aaronmannino.com/")
Act.create(name: "PWRFL PWR", url: "http://www.myspace.com/pwrflpower/music")

puts "Acts created."

# ALBUM---------------------------------------------------------------------------

puts "Creating Albums..."

Album.create(title: "A Spirited Rendition", date: "2010-04-01", cover_art: "A_Spirited_Rendition.cover_art")
Album.create(title: "Pomes", date: "2005-03-04", cover_art: "Embeum.cover_art")
Album.create(title: "Ooey", date: "2003-04-22", cover_art: "Ooey.cover_art")
Album.create(title: "Embeum", date: "2002-07-12", cover_art: "Embeum.cover_art")
Album.create(title: "In Need of Drums", date: "2001-11-16", cover_art: "In_Need_of_Drums.cover_art")

puts "Albums created."

# BLOG---------------------------------------------------------------------------

puts "Creating Blogs..."

Blog.create(title: "Site in a Conception Stage", body: "We are super excited to be launching our website 15 years late in 10 years. Please be patient as we work through our issues!", category: "by Nick")
Blog.create(title: "Seed Files", body: "This text is being generated from the band to the world, because of a little thing in Rails called the seeds file in the db directory. Free tips from your favorite band!", category: "by Nick")
Blog.create(title: "Derp Sperk", body: "I erb a terp of sperk curled derp sperk. Urt gurts lurk therz. And urt sounds lurk therz.", category: "by Nolan")

puts "Blogs created."

# COMMENT---------------------------------------------------------------------------

# CONTACT---------------------------------------------------------------------------

# FILM---------------------------------------------------------------------------

# GIG---------------------------------------------------------------------------

puts "Creating Gigs..."

Gig.create(date: "2012-12-01 19:00", cover: "10")
Gig.create(date: "2012-11-11 17:30", cover: "12")
Gig.create(date: "2007-10-25 22:00", cover: "6")
Gig.create(date: "2007-10-09 19:00", cover: "5")

puts "Gigs created."

# PICTURE---------------------------------------------------------------------------

# SET---------------------------------------------------------------------------

# SONG---------------------------------------------------------------------------

puts "Creating Songs..."

Song.create(title: "Bliss in a Basket", 
						album_id: Album.find_by_title("A Spirited Rendition").id,
						recording: "http://dl.dropbox.com/u/14393898/S3%20Directory/Albums/A%20Spirited%20Rendition/Songs/1%20Bliss%20in%20a%20Basket/01%20Bliss%20in%20a%20Basket.mp3"
					 )
Song.create(title: "Don't Hate Me",
						album_id: Album.find_by_title("A Spirited Rendition").id,
						recording: "http://dl.dropbox.com/u/14393898/S3%20Directory/Albums/A%20Spirited%20Rendition/Songs/2%20Don't%20Hate%20Me/02%20Don't%20Hate%20Me.mp3"
					)
Song.create(title: "Nix Nix",
						album_id: Album.find_by_title("A Spirited Rendition").id,
						recording: "http://dl.dropbox.com/u/14393898/S3%20Directory/Albums/A%20Spirited%20Rendition/Songs/3%20Nix%20Nix/03%20Nix%20Nix.mp3"
					)
Song.create(title: "Here I Go Again",
						album_id: Album.find_by_title("A Spirited Rendition").id,
						recording: "http://dl.dropbox.com/u/14393898/S3%20Directory/Albums/A%20Spirited%20Rendition/Songs/4%20Here%20I%20Go%20Again/04%20Here%20I%20Go%20Again.mp3"
					)
Song.create(title: "Real Bungee",
						album_id: Album.find_by_title("A Spirited Rendition").id,
						recording: "http://dl.dropbox.com/u/14393898/S3%20Directory/Albums/A%20Spirited%20Rendition/Songs/5%20Real%20Bungee/05%20Real%20Bungee.mp3"
					)
Song.create(title: "The Sayso",
						album_id: Album.find_by_title("A Spirited Rendition").id,
						recording: "http://dl.dropbox.com/u/14393898/S3%20Directory/Albums/A%20Spirited%20Rendition/Songs/6%20The%20Sayso/06%20The%20Sayso.mp3"
					)
Song.create(title: "Far Behind",
						album_id: Album.find_by_title("A Spirited Rendition").id,
						recording: "http://dl.dropbox.com/u/14393898/S3%20Directory/Albums/A%20Spirited%20Rendition/Songs/7%20Far%20Behind/07%20Far%20Behind.mp3"
					)

puts "Songs created."

# TAG---------------------------------------------------------------------------

# USER---------------------------------------------------------------------------

puts "Creating Users..."

puts ".........Nick"

User.create(name: "Nick", 
	email: "vandebar@gmail.com",
	password: "password",
	password_confirmation: "password",
	category: "Bandmember")

puts ".........created"

puts ".........fans"

fans = ["Celine Ui", "Lindsay Wahlborg", "Amanda Chase", "Kevin McCabe", "Courtland Premo", "Sean Cameron", "Sean Kelly", "David Rogge", "Deanna Fuller", "Greg Fuller", "Ada Mark"]
fans.each do |fan|
	User.create(name: fan, 
		email: fan.first.downcase + "_" + fan.split(" ").last.downcase + "@gmail.com",
		password: fan.split(" ").last.upcase + fan.split(" ").first.downcase,
		password_confirmation: fan.split(" ").last.upcase + fan.split(" ").first.downcase,
		category: "Fan")
end

puts ".........created"

puts ".........bandmembers"

bandmembers = ["Nolan Ericson", "Michael Nunan", "Aaron Wahlborg"]
bandmembers.each do |bandmember|
	User.create(name: bandmember, 
		email: bandmember.first.downcase + "_" + bandmember.split(" ").last.downcase+"@gmail.com",
		password: bandmember.split(" ").last.upcase + bandmember.split(" ").first.downcase,
		password_confirmation: bandmember.split(" ").last.upcase + bandmember.split(" ").first.downcase,
		category: "Bandmember")
end

puts ".........created"

puts ".........partners"

partners = ["David Geffen", "Ridley Scott", "Steven Spielberg", "Kara Diaguardi"]
partners.each do |partner|
	User.create(name: partner, 
		email: partner.first.downcase + "_" + partner.split(" ").last.downcase+"@gmail.com",
		password: partner.split(" ").last.upcase + partner.split(" ").first.downcase,
		password_confirmation: partner.split(" ").last.upcase + partner.split(" ").first.downcase,
		category: "Partner")
end

puts ".........created"

puts "Users created."

# VENUE---------------------------------------------------------------------------

puts "Creating Venues..."

Venue.create(name: "The Empty Bottle", street: "1035 North Western Avenue", city: "Chicago", state: "IL", zip: "60622", url: "http://www.emptybottle.com/")
Venue.create(name: "High Dive", street: "513 North 36th Street", city: "Seattle", state: "WA", zip: "98103", url: "http://www.highdiveseattle.com/")
Venue.create(name: "The Comet", street: "922 East Pike Street", city: "Seattle", state: "WA", zip: "98122", url: "http://www.comettavern.com/")
Venue.create(name: "The Crocodile", street: "2200 2nd Avenue", city: "Seattle", state: "WA", zip: "98121", url: "http://www.thecrocodile.com/")

puts "Venues created."

# DONZO--------------------------------------------------------------------------

puts "-:||  Dunzo = Success  ||:-"