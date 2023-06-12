class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :description
      t.string :difficulty
      t.string :video_url
      t.string :img_url

      t.timestamps
    end
  end
end
