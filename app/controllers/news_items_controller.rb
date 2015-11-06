class NewsItemsController < ApplicationController
  before_action :set_news_item, only: [:show]
  def index
    @news_items = NewsItem.all
  end

  def show
  end

  def set_news_item
    @news_item = NewsItem.find(params[:id])
  end
end
