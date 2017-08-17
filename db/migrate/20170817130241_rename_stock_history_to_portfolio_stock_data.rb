class RenameStockHistoryToPortfolioStockData < ActiveRecord::Migration[5.0]
  def change
    rename_table :stock_histories, :portfolio_stock_data
  end
end
