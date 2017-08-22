class ChangePercentageChangeAndAveragePriceForInvestorStockQuarters < ActiveRecord::Migration[5.0]
  def change
    change_column :investor_stock_quarters, :percentage_change_in_owned_shares_from_last_quarter, :float
    change_column :investor_stock_quarters, :stock_average_price, :float
  end
end
