class RebuildInvestorStocksTable < ActiveRecord::Migration[5.0]
  def change
    add_column :investor_stocks, :shares_total_count, :integer
    add_column :investor_stocks, :latest_quarter_shares_total_value, :integer
    add_column :investor_stocks, :percentage_weight_compared_to_portfolio_total_value, :integer
    add_column :investor_stocks, :percentage_shares_outstanding, :integer
  end
end
