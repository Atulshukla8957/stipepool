class EmployeeSession < ActiveRecord::Base
	belongs_to :employee


	def check_in
		checkin_time = Time.now
		save
	end

	def check_out
		checkout_time = Time.now
		duration = checkout_time - checkin_time 
		save
	end

	def check_in?
		!checkin_time.blank?
	end

	def check_out?
		!checkout_time.blank?
	end

end



