class CreateEmployeeSessions < ActiveRecord::Migration
  def change
    create_table :employee_sessions do |t|
    	t.references :employee
    	t.datetime :checkin_time
			t.datetime :checkout_time
			t.datetime :duration
      t.timestamps null: false
    end
  end
end
