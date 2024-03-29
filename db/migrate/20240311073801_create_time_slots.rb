class CreateTimeSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :time_slots do |t|
      t.references :coach, null: false, foreign_key: true
      t.date :date
      t.string :start_time
      t.string :end_time
      t.timestamps
    end
  end
end
