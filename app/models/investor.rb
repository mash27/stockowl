class Investor < ApplicationRecord
  has_many :investor_stocks, dependent: :destroy
  has_many :stocks, through: :investor_stocks
  has_many :portfolio_stock_data, through: :investor_stocks
end
