class CreateDays < ActiveRecord::Migration[7.0]
  def change
    create_table :days do |t|
      t.integer :day_number
      t.string :description
      t.integer :duration
      t.references :week, null: false, foreign_key: true

      t.timestamps
    end
  end
end
