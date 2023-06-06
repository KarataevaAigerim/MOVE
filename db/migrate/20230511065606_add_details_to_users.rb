class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :gender, :string
    add_column :users, :weight, :decimal
    add_column :users, :height, :decimal
    add_column :users, :goal, :string
    add_column :users, :experience, :string
  end
end
