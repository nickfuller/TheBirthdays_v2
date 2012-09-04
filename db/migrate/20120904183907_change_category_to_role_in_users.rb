class ChangeCategoryToRoleInUsers < ActiveRecord::Migration

	def change
		remove_column :users, :category
		add_column :users, :role, :string
	end

end
