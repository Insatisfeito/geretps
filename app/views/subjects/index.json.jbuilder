json.array!(@subjects) do |subject|
  json.extract! subject, :id, :name, :academic_year_id, :course_id, :responsible_id
  json.url subject_url(subject, format: :json)
end
