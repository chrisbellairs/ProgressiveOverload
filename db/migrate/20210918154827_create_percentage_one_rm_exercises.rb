class CreatePercentageOneRmExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :percentage_one_rm_exercises do |t|
      t.string :name
      t.integer :sets
      t.integer :reps
      t.integer :rest_period
      t.integer :percentage_one_rm

      t.timestamps
    end
  end
end
