class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.references :company
      t.references :branch
      t.references :job_title
      t.references :job_category
      t.references :work_shift
      t.string :username 
    	
      t.timestamps null: false
    end
  end
end
