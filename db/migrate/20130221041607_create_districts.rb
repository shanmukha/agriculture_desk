class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.references :state
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
