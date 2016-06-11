class CreateJoinTableEmployeeSkill < ActiveRecord::Migration
  def change
    create_join_table :employees, :skills ,:id => false do |t|
       t.index [:employee_id, :skill_id]
       t.index [:skill_id, :employee_id]
       
    end

  end
end
