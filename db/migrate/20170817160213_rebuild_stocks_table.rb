class RebuildStocksTable < ActiveRecord::Migration[5.0]
  def change
    add_column :stocks, :market_cap_in_millions, :integer
    add_column :stocks, :percentage_three_last_months_price_change, :integer
    add_column :stocks, :percentage_year_to_date_price_change, :integer
  end
end
