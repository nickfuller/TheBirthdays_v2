class AddActIdToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :act_id, :integer
  end
end
