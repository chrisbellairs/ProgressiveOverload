class AddRpeExerciseToExerciseRecord < ActiveRecord::Migration[6.1]
  def change
    add_reference :exercise_records, :rpe_exercise, null: false, foreign_key: true
  end
end
