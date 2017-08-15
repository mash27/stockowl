class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :username, :string
    add_column :users, :password, :string
    add_column :users, :payment_info, :string
  end
end
