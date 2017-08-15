class AddSharesOutstandingToStocks < ActiveRecord::Migration[5.0]
  def change
    add_column :stocks, :shares_outstanding, :integer
  end
end
