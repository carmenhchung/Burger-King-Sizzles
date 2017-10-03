json.extract! reply, :id, :reply_message, :user_id, :tweet_id, :created_at, :updated_at
json.url reply_url(reply, format: :json)
