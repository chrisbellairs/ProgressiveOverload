class RemoveProgramWeekFromRpeExercise < ActiveRecord::Migration[6.1]
  def change
    remove_reference :rpe_exercises, :program_week, null: false, foreign_key: true
  end
end
