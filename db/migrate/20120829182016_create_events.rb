class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :gig_id
      t.integer :act_id

      t.timestamps
    end
  end
end
