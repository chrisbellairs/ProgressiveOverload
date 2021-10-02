class AddWorkoutToPercentageOneRmExercise < ActiveRecord::Migration[6.1]
  def change
    add_reference :percentage_one_rm_exercises, :workout, null: false, foreign_key: true
  end
end
