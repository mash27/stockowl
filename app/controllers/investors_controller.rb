class InvestorsController < ApplicationController
  def index
    @investors = Investor.all
  end

  def show
  end
end
