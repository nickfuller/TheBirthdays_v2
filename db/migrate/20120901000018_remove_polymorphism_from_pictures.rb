class RemovePolymorphismFromPictures < ActiveRecord::Migration
	def change
		remove_column :pictures, :filmable_id
		remove_column :pictures, :filmable_type
	end
end
