class AddUserToOneRepMax < ActiveRecord::Migration[6.1]
  def change
    add_reference :one_rep_maxes, :user, null: false, foreign_key: true
  end
end
