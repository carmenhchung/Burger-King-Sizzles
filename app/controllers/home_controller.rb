class HomeController < ApplicationController
  def index
    @brand = "Burger King Sizzle"
    @tweets = Tweet.last(50)
  end
  def profile
    # @User = current_user.find(params[:id])
  end
end
