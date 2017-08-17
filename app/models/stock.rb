class Stock < ApplicationRecord
  has_many :investor_stocks
  has_many :investors, through: :investor_stocks

  has_many :user_stocks
  has_many :users, through: :user_stocks
  has_many :portfolio_stock_data, through: :investor_stocks

  attr_accessor :daily_price_serie
end
