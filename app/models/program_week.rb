class ProgramWeek < ApplicationRecord
  belongs_to :program
  has_many :percentage_one_rm_exercises
  has_many :rpe_exercises
end
