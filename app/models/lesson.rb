class Lesson < ApplicationRecord
  belongs_to :course

  validates :course, :title, :body, presence: true
end
