class HomeController < ApplicationController
  def index
    @brand = "Twitter"
    @tweets = Tweet.last(20)
  end

end
