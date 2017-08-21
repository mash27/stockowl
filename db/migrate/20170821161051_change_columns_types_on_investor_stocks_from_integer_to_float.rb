class ChangeColumnsTypesOnInvestorStocksFromIntegerToFloat < ActiveRecord::Migration[5.0]
  def change
    change_column :investor_stocks, :percentage_weight_compared_to_portfolio_total_value, :float
    change_column :investor_stocks, :percentage_shares_outstanding, :float
  end
end
