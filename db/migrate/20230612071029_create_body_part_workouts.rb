class CreateBodyPartWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :body_part_workouts do |t|
      t.references :body_part, null: false, foreign_key: true
      t.references :workout, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
