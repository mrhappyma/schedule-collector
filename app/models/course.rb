# frozen_string_literal: true

class Course < ApplicationRecord
  has_many :schedule_courses
  has_many :schedules, through: :schedule_courses

  validates :name, presence: true, uniqueness: true, length: { minimum: 5, maximum: 100}, format: { with: /\A[a-zA-Z\s]+\z/, message: "only allows letters and spaces" }
  validates :teacher, presence: true, length: { minimum: 5, maximum: 100}, format: { with: /\A[a-zA-Z,\s]+\z/, message: "only allows letters & spaces & commas" }
  validates :period, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 9 }, exclusion: { in: [3], message: "doesn't allow period 3" }
  validates :room, presence: true, numericality: { only_integer: true, greater_than: 100, less_than: 999 }

end
