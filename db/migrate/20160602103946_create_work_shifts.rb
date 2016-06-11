	class CreateWorkShifts < ActiveRecord::Migration
  def change
    create_table :work_shifts do |t|
      t.string :title
      t.string :start_time
      t.string :end_time
      t.string :duration

      t.timestamps null: false
    end
  end
end
