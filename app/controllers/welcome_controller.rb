class WelcomeController < ApplicationController
  def index
  	@news_items = NewsItem.all
  end
end
