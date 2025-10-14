class Course < ApplicationRecord
  has_many :lessons, dependent: :destroy

  has_many :enrollments, dependent: :destroy
  has_many :users, through: :enrollments

  validates :title, presence: true, length: { maximum: 40 }
  validates :body, presence: true
end
