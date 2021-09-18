class CreateExerciseRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :exercise_records do |t|
      t.string :notes

      t.timestamps
    end
  end
end
