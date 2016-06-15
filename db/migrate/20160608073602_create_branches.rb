class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
    	t.references :company
      t.string :title
      t.string :description
      t.float :latitude
      t.float :longitude
      t.timestamps null: false

      t.timestamps null: false
    end
  end
end
