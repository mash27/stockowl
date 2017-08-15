class CreateOperations < ActiveRecord::Migration[5.0]
  def change
    create_table :operations do |t|

      t.boolean :sold
      t.integer :stock_purchase_price
      t.integer :number_of_shares
      t.integer :user_stock_id
      t.references :user_stock, foreign_key: true

      t.timestamps
    end
  end
end
