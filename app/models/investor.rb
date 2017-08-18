class Investor < ApplicationRecord
  has_many :investor_stocks, dependent: :destroy
  has_many :stocks, through: :investor_stocks
  has_many :investor_stock_quarters, through: :investor_stocks
  
  mount_uploader :photo, PhotoUploader

  def portfolio_value
    self.investor_stocks.reduce(0) do |sum, investor_stock|
      sum + investor_stock.latest_quarter_shares_total_value
    end
  end
end
