class Investor < ApplicationRecord
  has_many :investor_stocks, dependent: :destroy
end
