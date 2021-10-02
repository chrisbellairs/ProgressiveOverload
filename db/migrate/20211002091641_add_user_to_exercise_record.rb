class AddUserToExerciseRecord < ActiveRecord::Migration[6.1]
  def change
    add_reference :exercise_records, :user, null: false, foreign_key: true
  end
end
