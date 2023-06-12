class Workout < ApplicationRecord
  has_many :workout_days
  has_many :days, through: :workout_days
  has_many :body_part_workouts
  has_many :body_parts, through: :body_part_workouts
end
