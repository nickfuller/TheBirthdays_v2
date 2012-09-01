class RemovePolymorphismFromFilms < ActiveRecord::Migration
	def change
		remove_column :films, :filmable_id
		remove_column :films, :filmable_type
	end
end
