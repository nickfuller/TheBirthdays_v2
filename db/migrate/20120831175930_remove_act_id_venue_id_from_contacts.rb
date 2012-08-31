class RemoveActIdVenueIdFromContacts < ActiveRecord::Migration

	def change
		remove_column :contacts, :venue_id
		remove_column :contacts, :act_id
	end

end
