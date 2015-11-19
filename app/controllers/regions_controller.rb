class RegionsController < ApplicationController
  before_action :set_region, only: [:show]

  def show
    @news_items = NewsItem.where(region_id: @region_id)
  end

  def set_region
    @region_id = params[:id]
  end
end
