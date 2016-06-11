class AddAddressToBranches < ActiveRecord::Migration
  def change 
	 add_column :branches, :address_line_1 ,:string
	 add_column :branches, :city ,:string
	 add_column :branches, :state ,:string
	 add_column :branches, :country ,:string
	 add_column :branches, :zipcode ,:string

  end
end
