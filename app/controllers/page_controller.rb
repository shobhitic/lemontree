class PageController < ApplicationController
  def index
    redirect_to links_url if user_signed_in?
  end

  def share
    @user = User.where(username: params[:username]).first
  end
end
