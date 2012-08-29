class AddGigIdActIdToSets < ActiveRecord::Migration
  def change
    add_column :sets, :gig_id, :integer
    add_column :sets, :act_id, :integer
  end
end
