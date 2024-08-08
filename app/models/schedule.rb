class Schedule < ApplicationRecord
  has_many :schedule_courses, dependent: :destroy
  has_many :courses, through: :schedule_courses

  validates :name, presence: true, uniqueness: true, length: { minimum: 5, maximum: 100}, format: { with: /\A[a-zA-Z-,\s]+\z/, message: "only allows letters & spaces & commas" }
  validates :grade, presence: true, numericality: { only_integer: true, greater_than: 8, less_than: 13, message: "must be between 9 and 12" }
  validates :courses, presence: true, length: {is: 7, message: "must have 7 courses"}, on: :create
end
