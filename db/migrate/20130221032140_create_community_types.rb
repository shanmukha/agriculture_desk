class CreateCommunityTypes < ActiveRecord::Migration
  def change
    create_table :community_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
