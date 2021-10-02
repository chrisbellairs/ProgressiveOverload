class RemoveProgramWeekFromPercentageOneRmExercise < ActiveRecord::Migration[6.1]
  def change
    remove_reference :percentage_one_rm_exercises, :program_week, null: false, foreign_key: true
  end
end
