class RpeExercise < ApplicationRecord
  belongs_to :workout
  has_many :exercise_records
end
