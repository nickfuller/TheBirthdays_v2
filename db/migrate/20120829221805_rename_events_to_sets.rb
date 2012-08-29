class RenameEventsToSets < ActiveRecord::Migration
  def change
  	rename_table :events, :sets
  end
end
