# class HomeController < ApplicationController
#   def index
#     @brand = "Twitter"
#     @tweets = Tweet.last(20)
#   end
#
# end

class HomeController < ApplicationController
  def index
    @brand = "Burger King Sizzle"
    @tweets = Tweet.last(20)
  end
  def profile
    @User = User.find(params[:id])
  end
end
