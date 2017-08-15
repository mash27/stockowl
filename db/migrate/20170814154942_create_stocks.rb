class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.integer :investor_id
      t.string :ticker
      t.string :company_name
      t.string :sector
      t.references :investor, foreign_key: true

      t.timestamps
    end
  end
end
