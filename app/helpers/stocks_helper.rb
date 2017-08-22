module StocksHelper
  def stock_change_css_class(percentage)
    return if percentage.nil?

    if percentage >= 10
      'stock-increase'
    elsif percentage <= -10
      'stock-decrease'
    end
  end

  def holding_change_css_class(number)
    return if number.nil?

    if number > 0
      'holding-increase'
    elsif number < 0
      'holding-decrease'
    end
  end
end
