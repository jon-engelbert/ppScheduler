json.array!(@courses) do |course|
  json.extract! course, :id, :name, :teacher, :teacher2, :teacher3, :university, :start_date
  json.url course_url(course, format: :json)
end
