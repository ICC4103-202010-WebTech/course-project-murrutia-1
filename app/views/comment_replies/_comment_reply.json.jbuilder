json.extract! comment_reply, :id, :message, :comment
json.url comment_reply_url(comment_reply, format: :json)
