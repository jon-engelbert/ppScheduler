json.array!(@availables) do |available|
  json.extract! available, :id, :student_id, :begin, :end, :assignment_id, :proirity, :active?
  json.url available_url(available, format: :json)
end
