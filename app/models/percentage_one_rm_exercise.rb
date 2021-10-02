class PercentageOneRmExercise < ApplicationRecord
  belongs_to :program_week
  has_many :exercise_records
end
