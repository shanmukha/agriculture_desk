class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.string :name
      t.references :community_type
      t.boolean :status
      t.references :area
      t.references :community_level
      t.text :description
      t.string :code

      t.timestamps
    end
  end
end

