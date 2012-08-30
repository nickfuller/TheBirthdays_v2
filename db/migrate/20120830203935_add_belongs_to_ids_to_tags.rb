class AddBelongsToIdsToTags < ActiveRecord::Migration
  def change
		add_column 	:tags, :tagable_id, :integer
		add_column 	:tags, :tagable_type, :string		
  end
end
