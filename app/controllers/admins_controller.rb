class AdminsController < ApplicationController
	def index
	end

	def sales
		redirect_to sales_path
	end

	def products
		redirect_to products_path
	end
end
