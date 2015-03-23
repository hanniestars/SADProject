class Agency < ActiveRecord::Base
	has_many :employees

	def to_s
		self.agency_name
	end
end
