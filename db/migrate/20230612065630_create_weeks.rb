class CreateWeeks < ActiveRecord::Migration[7.0]
  def change
    create_table :weeks do |t|
      t.integer :week_number
      t.string :description
      t.references :program, null: false, foreign_key: true

      t.timestamps
    end
  end
end
