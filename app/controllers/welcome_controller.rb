class WelcomeController < ApplicationController
  def index
    if current_user
  	  @news_items = NewsItem.all
    else
      redirect_to new_user_session_path
    end
  end
end
