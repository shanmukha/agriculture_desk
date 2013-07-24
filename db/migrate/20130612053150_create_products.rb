class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :code
      t.integer :status,:default => 1  
      t.timestamps
    end
  end
end
