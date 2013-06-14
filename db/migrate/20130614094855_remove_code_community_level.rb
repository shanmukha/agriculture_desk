class RemoveCodeCommunityLevel < ActiveRecord::Migration
  def up
    remove_column :community_levels,:code
  end

  def down
  end
end
