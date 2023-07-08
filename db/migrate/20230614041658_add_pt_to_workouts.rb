class AddPtToWorkouts < ActiveRecord::Migration[7.0]
  def change
    add_column :workouts, :pt, :text
  end
end
