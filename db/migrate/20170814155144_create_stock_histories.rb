class CreateStockHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :stock_histories do |t|
      t.string :quarter
      t.integer :shares_bought_sold
      t.integer :p_change
      t.integer :quarter_end_shares
      t.integer :avg_price
      t.integer :market_cap
      t.integer :shares
      t.integer :value
      t.integer :p_weight
      t.integer :p_share_change_from_last_Q
      t.integer :p_trade_impact
      t.integer :p_shares_outstanding
      t.integer :three_m_p_change
      t.integer :ytd_p_change
      t.references :stock, foreign_key: true

      t.timestamps
    end
  end
end
