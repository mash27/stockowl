class Stock < ApplicationRecord
  has_many :investor_stocks
  has_many :investors, through: :investor_stocks

  has_many :user_stocks
  has_many :users, through: :user_stocks

  attr_accessor :daily_price_serie


  # def self.transform_number(number)
  #  new_array = []
  #   array = number.to_i.to_s.split("")
  #   array.reverse.each_with_index do |x, i|
  #     if ((i + 1) % 3 == 0) && !(i == array.size - 1)
  #       new_array << "," + x
  #     else
  #       new_array << x
  #     end
  #   end
  #   new_array.reverse.join("")
  # end

end
