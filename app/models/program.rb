class Program < ApplicationRecord
  belongs_to :user
  has_many :program_weeks
end
