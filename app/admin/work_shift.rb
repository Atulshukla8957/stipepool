ActiveAdmin.register WorkShift do
	menu   parent: "Jobs"
  
	permit_params :title ,:start_time , :end_time, :duration ,:employee_id


	form  do |f|
		f.inputs "Work Shift" do
		f.input :employee_ids,as: :select, collection: Employee.select(:id,:username).uniq,:prompt => 'Select Employee' 
		f.input :title
    f.input :start_time ,as: :select, collection: WorkShift.time_calc ,:prompt => 'Select Time' 
 		f.input :end_time ,as: :select, collection: WorkShift.time_calc ,:prompt => 'Select Time' 
 		end
 		f.actions
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
