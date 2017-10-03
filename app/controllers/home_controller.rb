class HomeController < ApplicationController
  def index
    @brand = "Burger King Sizzle"
    @tweets = Tweet.last(50)
  end
  def profile
    @cTweets = []
    current_user.tweets.each do |r|
      @cTweets << r.message
    end
  end
end
