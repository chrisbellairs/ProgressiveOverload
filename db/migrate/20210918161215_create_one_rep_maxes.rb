class CreateOneRepMaxes < ActiveRecord::Migration[6.1]
  def change
    create_table :one_rep_maxes do |t|
      t.string :name
      t.integer :one_rep_max_weight

      t.timestamps
    end
  end
end
