class Education < ActiveRecord::Base

	has_and_belongs_to_many :employees

	validates :title , :presence=> true 
end
