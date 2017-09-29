class HomeController < ApplicationController
  def index
    @brand = "Twitter"
    @tweets = Tweet.last(20)
  end
# before_action :authenticate_user!
end
