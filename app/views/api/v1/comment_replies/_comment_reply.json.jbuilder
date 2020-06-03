json.extract! comment_reply, :id, :user, :original_comment, :message
json.url comment_reply_url(comment_reply, format: :json)
