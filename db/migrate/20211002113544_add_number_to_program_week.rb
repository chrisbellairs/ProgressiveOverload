class AddNumberToProgramWeek < ActiveRecord::Migration[6.1]
  def change
    add_column :program_weeks, :number, :integer
  end
end
