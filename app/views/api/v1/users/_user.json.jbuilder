json.extract! user, :id, :username, :full_name, :email, :age
json.url user_url(user, format: :json)
