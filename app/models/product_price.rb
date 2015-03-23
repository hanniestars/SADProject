class ProductPrice < ActiveRecord::Base
	belongs_to :product
	belongs_to :dealer_store
end
