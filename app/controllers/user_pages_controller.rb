class UserPagesController < ApplicationController
  def profile
    @user = current_user
  end

  def region
    @user = current_user
    @user_region = @user.region
  end
end
