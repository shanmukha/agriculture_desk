class CreateTaluks < ActiveRecord::Migration
  def change
    create_table :taluks do |t|
      t.references :district
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
