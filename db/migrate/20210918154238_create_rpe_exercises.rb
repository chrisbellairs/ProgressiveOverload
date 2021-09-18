class CreateRpeExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :rpe_exercises do |t|
      t.string :name
      t.integer :sets
      t.integer :reps
      t.integer :rest_period
      t.integer :rpe

      t.timestamps
    end
  end
end
