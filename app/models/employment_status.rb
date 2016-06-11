class EmploymentStatus < ActiveRecord::Base
	validates :title , :presence=> true 
end
