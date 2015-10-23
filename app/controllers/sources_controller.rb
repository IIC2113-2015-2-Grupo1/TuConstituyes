class SourcesController < ApplicationController
  def index
    Source.all
  end
end
