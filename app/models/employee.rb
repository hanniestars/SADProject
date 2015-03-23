class Employee < ActiveRecord::Base
	belongs_to :dealer_store
	belongs_to :agency
	has_many :sales

	def to_s
		self.employee_name
	end
end
