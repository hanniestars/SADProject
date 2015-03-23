class DealerStore < ActiveRecord::Base
	belongs_to :dealer
	has_many :product_prices
	has_many :employees
	has_many :sales

	def to_s
		self.branch_name
	end
end
