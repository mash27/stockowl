class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
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
