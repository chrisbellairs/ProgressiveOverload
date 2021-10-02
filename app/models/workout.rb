class Workout < ApplicationRecord
  belongs_to :program_week
  has_many :percentage_one_rm_exercises
  has_many :rpe_exercises
end
