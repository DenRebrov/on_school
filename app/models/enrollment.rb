class Enrollment < ApplicationRecord
  belongs_to :user
  belongs_to :course

  after_create :track_enrollment

  private

  def track_enrollment
    Yabeda.on_school.courses_purchased_total.increment
    Yabeda.on_school.money_earned_total.increment({}, by: course.price)
  end
end
