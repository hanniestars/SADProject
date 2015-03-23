class Product < ActiveRecord::Base
	has_many :sales
	has_many :product_prices
end
