class RemovePortfolioStockDataTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :portfolio_stock_data
  end
end
