class InvestorStock < ApplicationRecord
  belongs_to :investor
  belongs_to :stock
  has_many :investor_stock_quarters
end
