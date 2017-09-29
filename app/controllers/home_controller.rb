class HomeController < ApplicationController
  def index
    @brand = "Twitter"
    @tweets = Tweet.last(20)
  end

  def homepage
    #  @tweets = Tweet.last(20)
  end

end
