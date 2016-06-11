class Company < ActiveRecord::Base
	mount_uploader :logo, ImageUploader
	mount_uploader :banner, ImageUploader
	
	has_many :branches
	has_many :employees
	
end
