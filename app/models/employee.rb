class Employee < ActiveRecord::Base

	belongs_to :company 
	belongs_to :branch
	belongs_to :work_shift
	belongs_to :job_title
	belongs_to :job_category
	has_and_belongs_to_many :skills
	has_and_belongs_to_many :educations 

  accepts_nested_attributes_for :skills
  accepts_nested_attributes_for :educations


end
