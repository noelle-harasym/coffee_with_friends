json.extract! user, :id, :name, :email, :mobile_number, :password,
              :coffee_preference, :created_at, :updated_at
json.url user_url(user, format: :json)
