class CreateCommunityLevels < ActiveRecord::Migration
  def change
    create_table :community_levels do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
