class Language < ActiveRecord::Base

	validates :title , :presence=> true 
end
