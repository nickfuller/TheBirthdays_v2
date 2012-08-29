class AddVenueIdToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :venue_id, :integer
  end
end
