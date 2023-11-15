class AddSetsToWorkouts < ActiveRecord::Migration[7.0]
  def change
    add_column :workouts, :sets, :text
  end
end
