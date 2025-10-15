class GenerateEverythingJob < ApplicationJob
  queue_as :default

  def perform
    seed_users
    seed_cource_and_lessons
    seed_enrollment
  end

  private

  def seed_users
    rand(1..5).times { User.create!(name: Faker::Name.name) }
  end

  def seed_cource_and_lessons
    rand(1..3).times do
      course = Course.create!(
        title: Faker::Educator.subject,
        body: Faker::Company.bs,
        price: rand(1000..5000)
      )

      rand(1..10).times do
        lesson = Lesson.create!(
          title: Faker::Educator.subject,
          body: Faker::Company.bs,
          number: rand(16),
          course_id: course.id
        )
      end
    end
  end

  def seed_enrollment
    Enrollment.create!(
      user_id: User.order("RANDOM()").limit(1).ids.first,
      course_id: Course.order("RANDOM()").limit(1).ids.first
    )
  end
end
