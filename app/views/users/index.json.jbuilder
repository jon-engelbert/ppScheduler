json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :cellphone, :english_speaker?, :teacher?, :admin?, :student?
  json.url user_url(user, format: :json)
end
