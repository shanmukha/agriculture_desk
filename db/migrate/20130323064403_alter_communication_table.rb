class AlterCommunicationTable < ActiveRecord::Migration

  def up
    add_column :communities,:product_id,:integer
    remove_column :communities,:area_id
    change_table :communities do |t|
      t.change :status,:integer
    end  
    change_table :user_role_communities do |t|
      t.change :status,:integer
    end   
  end

  def down
   change_table :communities do |t|
     t.change :status,:boolean
   end
    change_table :user_role_communities do |t|
      t.change :status,:boolean
   end
  end
end


