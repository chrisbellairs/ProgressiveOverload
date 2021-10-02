class ProgramWeek < ApplicationRecord
  belongs_to :program
  has_many :workouts
end
