class ScheduleCourse < ApplicationRecord
  belongs_to :schedule
  belongs_to :course
end
