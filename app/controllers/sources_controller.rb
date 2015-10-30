class SourcesController < ApplicationController
  def index
    @news_items = NewsItem.all
  end
end
# r