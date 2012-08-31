class ChangeSongs < ActiveRecord::Migration

	def change
    remove_column :songs, :album_id
		remove_column :songs, :audio
		add_column :songs, :recording, :string
		add_column :songs, :category, :string
		add_column :songs, :songable_id, :integer
		add_column :songs, :songable_type, :string
	end

end
