class ChangeDistrictColumnName < ActiveRecord::Migration
  def up
    rename_column :users, :distick, :district
  end

  def down
  end
end
