class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.datetime :date
      t.string :cover_art

      t.timestamps
    end
  end
end
