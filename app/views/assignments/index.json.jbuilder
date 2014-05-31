json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :title, :course_id, :due_date
  json.url assignment_url(assignment, format: :json)
end
