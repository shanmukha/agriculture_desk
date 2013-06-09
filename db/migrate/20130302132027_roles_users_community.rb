class RolesUsersCommunity < ActiveRecord::Migration

  def up
    create_table :user_role_communities do |t|
      t.column :role_id, :integer
      t.column :user_id, :integer
      t.column :community_id,:integer
      t.column :status,:boolean
      t.timestamps
    end
 end

  def down
    drop_table :user_role_communities
  end
end
