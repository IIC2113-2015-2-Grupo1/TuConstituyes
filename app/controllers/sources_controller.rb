class SourcesController < ApplicationController
  before_action :set_source, only: [:show]

  def index
    @news_items = NewsItem.all
  end

  def show
  	@news_items = @source.news_items
  end

  def set_source
  	@source = Source.find(params[:id])
  end
end
# r
