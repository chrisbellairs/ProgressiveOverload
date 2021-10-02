class AddProgramToProgramWeek < ActiveRecord::Migration[6.1]
  def change
    add_reference :program_weeks, :program, null: false, foreign_key: true
  end
end
