class Schedule < ApplicationRecord
  has_many :schedule_courses
  has_many :courses, through: :schedule_courses
end
