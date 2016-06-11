class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
    	t.references :company
      t.string :title
      t.string :description
      t.string :lat 
      t.string :lng
      t.timestamps null: false

      t.timestamps null: false
    end
  end
end
