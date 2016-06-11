class CreateJoinTableEmployeeEducation < ActiveRecord::Migration
  def change
    create_join_table :employees, :educations,:id => false do |t|
       t.index [:employee_id, :education_id]
       t.index [:education_id, :employee_id]
    end
  end
end
