class CreateUserStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :user_stocks do |t|
      t.integer :stock_id
      t.references :stock, foreign_key: true

      t.integer :user_id
      t.references :user, foreign_key: true

      t.integer :change
      t.integer :percentage_change
      t.integer :shares_held
      t.integer :market_value
      t.integer :percentage_weight

      t.timestamps
    end
  end
end
