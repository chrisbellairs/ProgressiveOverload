class AddPercentageOneRmExerciseToExerciseRecord < ActiveRecord::Migration[6.1]
  def change
    add_reference :exercise_records, :percentage_one_rm_exercise, null: false, foreign_key: true
  end
end
