1..5.times do
  User.create!(name: Faker::Name.name)
end

1..3.times do
  course = Course.create!(
    title: Faker::Educator.subject,
    body: Faker::Company.bs
  )

  1..10.times do
    lesson = Lesson.create!(
      title: Faker::Educator.subject,
      body: Faker::Company.bs,
      number: rand(16),
      course_id: course.id
    )
  end
end
