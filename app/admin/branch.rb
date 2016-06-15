ActiveAdmin.register Branch do
	menu   parent: "Oraganisation"

	permit_params :title, :description, :company_id,:address_line_1, :city, :state , :latitude,:longitude 

	

    
    

	form do |f|
	  f.inputs "Branch"  do
	    f.input :company_id, as: :select, collection: Company.select(:id,:title).uniq, :prompt=> "Select Company"
	  	f.input :title 
	  	f.input :description 
	 		f.input :address_line_1
	 		f.input :city
	 		f.input :state
	 		f.input :country,:as=> :string
	 		f.input :zipcode
	  	f.actions
	 	end
 	end
	 	
 	show  do 
 		attributes_table do
      row :company_id
      row :title
     	row :description
     	row :address_line_1
     	row :city
     	row	:state
     	row :country
     	row :zipcode
   	end
 		@branch = Branch.find(params[:id])
		
   	render partial: 'active_admin/branches/map' ,:locals => {:branch => @branch }
   	
	end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
