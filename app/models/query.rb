class Query < ActiveRecord::Base
	has_many :comments
	belongs_to :creater , class_name: 'Employee', :foreign_key => 'creater_id'
end
