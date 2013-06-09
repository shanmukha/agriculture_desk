class AddUuidTokenToUser < ActiveRecord::Migration
  def change
    add_column :users,:uuid,:string
    add_column :users,:token,:string
  end
end
