json.array!(@matches) do |match|
  json.extract! match, :id, :begin, :end, :assignment_id, :available1_id, :available2_id, :user1_response?, :user2_response?, :user1_commitment, :user2_commitment
  json.url match_url(match, format: :json)
end
