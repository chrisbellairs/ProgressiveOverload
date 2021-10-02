class ExerciseRecord < ApplicationRecord
  belongs_to :user
  belongs_to :percentage_one_rm_exercise
  belongs_to :rpe_exercise
  has_many :exercise_set_records
end
