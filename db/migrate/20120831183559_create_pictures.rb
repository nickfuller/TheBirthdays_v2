class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :description
      t.string :category
      t.string :image
      t.integer :pictureable_id
      t.string :pictureable_type

      t.timestamps
    end
  end
end
