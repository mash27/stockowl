class Investor < ApplicationRecord
  has_many :investor_stocks, dependent: :destroy
  has_many :stocks, through: :investor_stocks
  has_many :stock_histories, through: :investor_stocks

  mount_uploader :photo, PhotoUploader
end
