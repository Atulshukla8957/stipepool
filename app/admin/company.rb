ActiveAdmin.register Company do
	menu   parent: "Oraganisation"

	permit_params :title, :logo,:banner,:tag_line ,:establish_year 


	form  do |f|
		f.inputs "company" do
      f.input :title
 			f.input :logo, as: :file
  		f.input :banner, as: :file
   		f.input :tag_line
    	f.input :establish_year
  	end
  	f.actions 
	end

	show do
    attributes_table do
      row :title
      row :logo do
        image_tag company.logo.url
      end
      row :banner do
        image_tag company.banner.url
      end
      row :tag_line
      row :establish_year
    end
    active_admin_comments
  end
	
  index do
    selectable_column
    id_column
    column :title

    column :logo do |logo|
      image_tag logo.logo.url(:thumb)
    end 
    column :banner do |banner|
      image_tag banner.banner.url(:thumb)
    end
    column :tag_line
    column :establish_year
    actions
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
