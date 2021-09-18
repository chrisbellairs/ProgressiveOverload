class CreateProgramWeeks < ActiveRecord::Migration[6.1]
  def change
    create_table :program_weeks do |t|

      t.timestamps
    end
  end
end
