class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.datetime :date
      t.string :venue
      t.string :street
      t.string :city
      t.string :zipcode
      t.boolean :cover
      t.string :ticket_price
      t.string :poster

      t.timestamps
    end
  end
end
