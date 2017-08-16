class InvestorsController < ApplicationController
  def index
  end

  def show
    @investor = Investor.find(params[:id])
    # @stocks = @investor.stocks
    # @investor_stock = InvestorStock.find(params[@stock])

    # .stock_history
  end
end
