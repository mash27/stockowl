class ChangeColumnsTypesOnStocksFromIntegerToFloat < ActiveRecord::Migration[5.0]
  def change
    change_column :stocks, :current_price, :float
    change_column :stocks, :shares_outstanding, :float
    change_column :stocks, :market_cap_in_millions, :float
    change_column :stocks, :percentage_three_last_months_price_change, :float
    change_column :stocks, :percentage_year_to_date_price_change, :float
  end
end
