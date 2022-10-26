class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :title
      t.integer :activity_type
      t.time :start
      t.time :duration
      t.integer :pace
      t.integer :distance
      t.integer :steps
      t.integer :heart_rate
      t.text :notes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
