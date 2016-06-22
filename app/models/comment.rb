class Comment < ActiveRecord::Base
	
	belongs_to :commenter, class_name: 'Employee' ,:foreign_key => 'commenter_id'
end
