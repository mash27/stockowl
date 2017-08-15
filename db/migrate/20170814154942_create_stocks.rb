class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.string :ticker
      t.string :company_name
      t.string :sector
      t.integer :current_price

      t.timestamps
    end
  end
end
