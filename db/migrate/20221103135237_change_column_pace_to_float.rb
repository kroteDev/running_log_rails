class ChangeColumnPaceToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column(:activities, :pace, :float)
  end
end
