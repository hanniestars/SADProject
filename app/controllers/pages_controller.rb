class PagesController < ApplicationController
	def index
		if user_signed_in? 
			render :template => "sales/index"
		else
			redirect_to new_user_session_path
		end
	end
end
