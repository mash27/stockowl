class AddPortfolioValueToInvestors < ActiveRecord::Migration[5.0]
  def change
    add_column :investors, :portfolio_value, :string
  end
end
