class WorkoutDay < ApplicationRecord
  belongs_to :workout
  belongs_to :day
end
