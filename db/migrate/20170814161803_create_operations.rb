class CreateOperations < ActiveRecord::Migration[5.0]
  def change
    create_table :operations do |t|
      t.integer :number_of_shares
      t.integer :stock_price
      t.boolean :sold
      t.references :portfolio_tracker, foreign_key: true

      t.timestamps
    end
  end
end
