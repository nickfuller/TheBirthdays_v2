class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.string :description
      t.string :footage
      t.integer :filmable_id
      t.string :filmable_type

      t.timestamps
    end
  end
end
