class CreateJobTitles < ActiveRecord::Migration
  def change
    create_table :job_titles do |t|
      t.string :title
      t.text :description
      t.string :specification
      t.text :note

      t.timestamps null: false
    end
  end
end
