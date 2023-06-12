class CreateWorkoutDays < ActiveRecord::Migration[7.0]
  def change
    create_table :workout_days do |t|
      t.references :workout, null: false, foreign_key: true
      t.references :day, null: false, foreign_key: true
      t.timestamps
    end
  end
end
