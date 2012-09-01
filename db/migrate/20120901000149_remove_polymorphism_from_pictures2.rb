class RemovePolymorphismFromPictures2 < ActiveRecord::Migration
	def change
		remove_column :pictures, :pictureable_id
		remove_column :pictures, :pictureable_type
	end
end
