class RemoveRoleFromContacts < ActiveRecord::Migration
	def change
		remove_column :contacts, :role
		add_column :contacts, :contactable_id, :integer
		add_column :contacts, :contactable_type, :string		
	end
end
