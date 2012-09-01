class RemovePolymorphismFromTags < ActiveRecord::Migration
	def change
		remove_column :tags, :tagable_id
		remove_column :tags, :tagable_type
	end
end
