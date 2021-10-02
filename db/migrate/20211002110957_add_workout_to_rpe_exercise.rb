class AddWorkoutToRpeExercise < ActiveRecord::Migration[6.1]
  def change
    add_reference :rpe_exercises, :workout, null: false, foreign_key: true
  end
end
