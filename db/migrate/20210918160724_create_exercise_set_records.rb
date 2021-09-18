class CreateExerciseSetRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :exercise_set_records do |t|
      t.integer :reps
      t.integer :weight
      t.integer :rpe
      t.string :notes

      t.timestamps
    end
  end
end
