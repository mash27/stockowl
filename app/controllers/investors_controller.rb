class InvestorsController < ApplicationController
  def index
    @investors = Investor.all
  end

  def show
    @investor = Investor.find(params[:id])
    # @stocks = @investor.stocks
    # @investor_stock = InvestorStock.find(params[@stock])

    # .stock_history
  end
end
