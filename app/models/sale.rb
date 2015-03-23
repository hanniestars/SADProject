class Sale < ActiveRecord::Base
	belongs_to :product
	belongs_to :employee
	belongs_to :dealer_store
end
