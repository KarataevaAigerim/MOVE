class ChangeDecimalToIntegerInUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :weight, :integer
    change_column :users, :height, :integer
  end
end
