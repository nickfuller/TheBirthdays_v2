class RenameFansToUsers < ActiveRecord::Migration
  def change
  	rename_table :fans, :users
  end
end
