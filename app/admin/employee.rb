ActiveAdmin.register Employee do

	permit_params :username, :company_id, :branch_id, :job_title_id, :job_category_id, :work_shift_id , skill_ids: [:id], education_ids: [:id]
  


	form do |f|
	  f.inputs "Empolyee"  do

	  	f.input :username
	    f.input :company_id, as: :select, collection: Company.select(:id,:title).uniq, :prompt=> "Select Company"
	  	f.input :branch_id, as: :select, collection: Branch.select(:id,:title).uniq, :prompt=> "Select Branch"
	  	f.input :job_title_id, as: :select, collection: JobTitle.select(:id,:title).uniq, :prompt=> "Select Job Title "
	 		f.input :work_shift_id, as: :select, collection: WorkShift.select(:id,:title).uniq, :prompt=> "Select Work Shift"
	 		f.input :job_category_id, as: :select, collection: JobCategory.select(:id,:title).uniq, :prompt=> "Select Job Category"
    	#f.inputs do
    	#	f.has_many :skills do |l|
    	f.inputs "Skills" do
    		f.input :skill_ids , multiple: true, as: :check_boxes, collection: Skill.select(:id,:title)
     	end
			f.inputs "Education" do
    	f.input :education_ids , multiple: true, as: :check_boxes, collection: Education.select(:id,:title)
			end	
    end
    f.actions	
	end 


	show do
    attributes_table_for employee do
      row :username 
      row :company_id 
      row :branch_id
      row :job_title 	
      row :work_shift
      row :job_category
      row :skills do
      	employee.skills.pluck(:title).join(", ")
      end
      row :educations do
      	employee.educations.pluck(:title).join(", ")
      end
    end
    active_admin_comments
  end
	
	controller do
		after_action :update_skills , only: [:create , :update]
    def update_skills
        employee = Employee.where(id: params[:id]).first ||  Employee.where(username: params[:employee][:username]).last
        employee.skills.delete_all
        skills = params[:employee][:skill_ids]
        skills.shift
        skills.each do |skill_id|
            employee.skills << Skill.find(skill_id.to_i)
        end
    end

    after_action :update_educations , only: [:create , :update]
    def update_educations
        employee = Employee.where(id: params[:id]).first ||  Employee.where(username: params[:employee][:username]).last
        employee.educations.delete_all
        educations = params[:employee][:education_ids]
        educations.shift
        educations.each do | education_id|
          	employee.educations << Education.find(education_id.to_i)
        end
    end	


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
