class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :audio
      t.text :lyric
      t.string :chart
      t.string :tablature

      t.timestamps
    end
  end
end
