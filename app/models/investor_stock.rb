class InvestorStock < ApplicationRecord
  belongs_to :investor
  belongs_to :stock

  has_many :stock_histories, dependent: :destroy
end
