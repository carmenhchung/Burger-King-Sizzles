class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :user_id, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /tweets
  # GET /tweets.json
  def index
    @tweets = Tweet.all
    # @username = User.user_name
  end

  # GET /tweets/1
  # GET /tweets/1.json
  def show

  end

  # def display
  #   @tweet = Tweet.find(params[:id])
  #   @tweet = @tweet.message.select! { |s| s.user_id == current_user.id }
  # end
  # GET /tweets/new
  def new
    @tweet = Tweet.new
    @tweet = current_user.tweets.build
  end

  # GET /tweets/1/edit
  def edit
  end

  #UPVOTE & DOWNVOTE
  def upvote
  @tweet = Tweet.find(params[:id])
  @tweet.upvote_by current_user
  redirect_back fallback_location: tweets_path
  end

  def downvote
    @tweet = Tweet.find(params[:id])
    @tweet.downvote_by current_user
    redirect_back fallback_location: tweets_path
  end
  # POST /tweets
  # POST /tweets.json
  def create

    @tweet = Tweet.new(tweet_params)
    @tweet = current_user.tweets.new(tweet_params)

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to @tweet, notice: 'Sizzle was successfully created.' }
        format.json { render :show, status: :created, location: @tweet }
      else
        format.html { render :new }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweets/1
  # PATCH/PUT /tweets/1.json
  def update
    respond_to do |format|
      if @tweet.update(tweet_params)
        format.html { redirect_to @tweet, notice: 'Sizzle was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweet }
      else
        format.html { render :edit }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweets/1
  # DELETE /tweets/1.json
  def destroy
    @tweet.destroy
    respond_to do |format|
      format.html { redirect_to tweets_url, notice: 'Sizzle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweet
      @tweet = Tweet.find(params[:id])
    end
    def find_user
      @User=User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tweet_params
      params.require(:tweet).permit(:message, :avatar, :user_id)
    end
end
