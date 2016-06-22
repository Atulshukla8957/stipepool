class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
    	t.references :creater
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
