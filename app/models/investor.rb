class Investor < ApplicationRecord
  has_many :investor_stocks, dependent: :destroy
  has_many :stocks, through: :investor_stocks
  has_many :investor_stock_quarters, through: :investor_stocks
end
