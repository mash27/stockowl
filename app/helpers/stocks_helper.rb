module StocksHelper
  def stock_change_css_class(percentage)
    if percentage >= 10
      'stock-increase'
    elsif percentage <= -10
      'stock-decrease'
    end
  end
end
