class SiteController < ApplicationController
  def index
    @title="Welcome to Padma's Chat Room!"
  end

  def about
    @title="About us"
  end

  def help
    @title="Help"
  end
end
