class Stock < ApplicationRecord
  has_many :investor_stocks
  has_many :investors, through: :investor_stocks

  has_many :user_stocks
  has_many :users, through: :user_stocks

  has_many :stock_histories, through: :investor_stocks
end
