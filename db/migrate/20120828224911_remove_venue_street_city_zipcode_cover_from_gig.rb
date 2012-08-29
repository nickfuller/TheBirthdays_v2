class RemoveVenueStreetCityZipcodeCoverFromGig < ActiveRecord::Migration
  def change
    remove_column :gigs, :venue 
    remove_column :gigs, :street
    remove_column :gigs, :city
    remove_column :gigs, :zipcode
    remove_column :gigs, :cover
    remove_column :gigs, :ticket_price
    add_column :gigs, :cover, :integer
  end
end

# Q: Did this all do what I wanted it to do? Should leave Gig with 3 strings: date, cover, poster.
# A: Yes, this all worked.