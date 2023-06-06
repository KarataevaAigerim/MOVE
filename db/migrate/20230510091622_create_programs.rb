class CreatePrograms < ActiveRecord::Migration[7.0]
  def change
    create_table :programs do |t|
      t.string :name
      t.decimal :price
      t.text :content

      t.timestamps
    end
  end
end
