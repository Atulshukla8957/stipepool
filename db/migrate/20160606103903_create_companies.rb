class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :title
      t.string :logo
      t.string :banner
      t.string :tag_line
      t.string :establish_year
      t.timestamps null: false
    end
  end
end
