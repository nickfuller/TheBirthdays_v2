class AddAlbumIdToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :album_id, :integer
		remove_column :songs, :songable_id
		remove_column :songs, :songable_type
  end
end
