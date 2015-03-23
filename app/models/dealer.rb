class Dealer < ActiveRecord::Base
	has_many :dealer_stores

	def to_s
		self.dealer_name
	end
end
