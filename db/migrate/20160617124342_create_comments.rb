class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.references :query
    	t.references :commenter
      t.text :description

      t.timestamps null: false
    end
  end
end
