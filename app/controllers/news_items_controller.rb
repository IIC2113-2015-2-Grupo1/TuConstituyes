class NewsItemsController < ApplicationController
  before_action :set_news_item, only: [:show]
  def index
    @news_items = NewsItem.all
    if params[:query]
      @news_items = NewsItem.search(params[:query]).order('created_at DESC')
    else
      @news_items = NewsItem.all.order('created_at DESC')
    end
  end

  def show
  end

  def set_news_item
    @news_item = NewsItem.find(params[:id])
  end
end
