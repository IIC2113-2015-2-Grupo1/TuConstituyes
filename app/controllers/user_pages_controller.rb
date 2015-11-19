class UserPagesController < ApplicationController
  def profile
    @user = current_user
  end

  def region
    @user = current_user
    @user_region = @user.region
  end

  def tags
    @user = current_user
    @user_tags = Tag.where(user_id: @user.id)
  end
end
