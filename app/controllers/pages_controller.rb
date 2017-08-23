class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @api_response = ParseApiService.new.searcher.first["articles"]
  end

  def tour
  end

  def about
  end

  def faq
  end

  def contact_us
  end
end
