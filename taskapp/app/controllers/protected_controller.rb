class ProtectedController < ApplicationController
	before_action :require_login
	before_action :set_active_user

	def require_login
		unless session[:user_id]
			flash[:message] = "You are not allowed here"
			redirect_to login_path
		end
	end
	# nice!
	def set_active_user
    @active_user = User.find(session[:user_id])
  end
end
