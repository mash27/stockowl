class CreateStockHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :stock_histories do |t|
      t.string :quarter
      t.integer :investor_stock_id
      t.references :investor_stock, foreign_key: true
      t.integer :shares_bought_sold
      t.integer :percentage_change
      t.integer :quarter_end_shares
      t.integer :avg_price
      t.integer :market_cap
      t.integer :shares
      t.integer :value
      t.integer :percentage_weight
      t.integer :percentage_share_change_from_last_q
      t.integer :percentage_trade_impact
      t.integer :percentage_shares_outstanding
      t.integer :three_month_percentage_change
      t.integer :ytd_percentage_change


      t.timestamps
    end
  end
end
