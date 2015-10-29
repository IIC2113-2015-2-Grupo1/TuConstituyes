class NewsItemsController < ApplicationController
  def index
  	@news_items = NewsItem.all
  end

  def show
  end
end
