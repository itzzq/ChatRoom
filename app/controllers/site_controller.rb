class SiteController < ApplicationController
  protect_from_forgery
  
  include SessionsHelper

  # Force signout to prevent CSRF attacks
  def handle_unverified_request
    sign_out
    super
  end
  
  def index
    @title="Welcome to Padma's Chat Room!"
    if signed_in?
      @micropost  = current_user.microposts.build 
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def about
    @title="About us"
  end

  def help
    @title="Help"
  end
end
