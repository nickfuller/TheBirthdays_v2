class RemoveVenueStreetCityZipcodeCoverFromGig < ActiveRecord::Migration
  def change
    remove_column :gig, :venue 
    remove_column :gig, :street
    remove_column :gig, :city
    remove_column :gig, :zipcode
    remove_column :gig, :cover
    remove_column :gig, :ticket_price
    add_column :gig, :cover, :float
  end
end

# Did this all do what I wanted it to do? Should leave Gig with 3 strings: date, cover, poster.