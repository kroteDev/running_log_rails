class ChangeColumnDistanceToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column(:activities, :distance, :float)
  end
end
