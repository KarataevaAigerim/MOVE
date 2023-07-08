class ChangeWorkoutsDescription < ActiveRecord::Migration[7.0]
  def change
    change_column :workouts, :description, :text
  end
end
