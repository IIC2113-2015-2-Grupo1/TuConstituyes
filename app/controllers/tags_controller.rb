class TagsController < ApplicationController
  before_action :set_tag, only: [:show]

  def show
    @news_items = @tag.news_items
  end

  def set_tag
    @tag = Tag.find(params[:id])
  end
end
