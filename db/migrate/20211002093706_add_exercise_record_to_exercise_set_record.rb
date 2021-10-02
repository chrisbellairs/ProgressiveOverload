class AddExerciseRecordToExerciseSetRecord < ActiveRecord::Migration[6.1]
  def change
    add_reference :exercise_set_records, :exercise_record, null: false, foreign_key: true
  end
end
