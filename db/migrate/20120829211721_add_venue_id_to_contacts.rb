class AddVenueIdToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :venue_id, :integer
  end
end
