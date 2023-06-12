class Day < ApplicationRecord
  belongs_to :week
  has_many :workout_days
  has_many :workouts, through: :workout_days
end
