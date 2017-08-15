class CreateInvestorStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :investor_stocks do |t|
      t.references :investor, foreign_key: true
      t.references :stock, foreign_key: true

      t.timestamps
    end
  end
end
