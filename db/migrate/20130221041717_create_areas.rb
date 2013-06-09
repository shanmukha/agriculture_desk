class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.references :taluk
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
