json.extract! user, :id, :name, :password, :email, :city, :programLanguagestring, :team, :phone, :created_at, :updated_at
json.url user_url(user, format: :json)
