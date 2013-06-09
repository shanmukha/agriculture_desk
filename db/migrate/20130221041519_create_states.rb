class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.references :country
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
