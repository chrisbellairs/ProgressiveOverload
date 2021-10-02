class AddProgramWeekToWorkout < ActiveRecord::Migration[6.1]
  def change
    add_reference :workouts, :program_week, null: false, foreign_key: true
  end
end
