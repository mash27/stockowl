class CreateInvestorStockQuarters < ActiveRecord::Migration[5.0]
  def change
    create_table :investor_stock_quarters do |t|
      t.references :investor_stock, foreign_key: true, index: true
      t.string :designation
      t.integer :traded_shares_count
      t.integer :shares_count_at_the_end
      t.integer :percentage_change_in_owned_shares_from_last_quarter
      t.integer :stock_average_price
    end
  end
end
