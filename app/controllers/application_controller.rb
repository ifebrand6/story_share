class ApplicationController < ActionController::Base
 layout "admin"
  protect_from_forgery with: :exception
  # private
		#   def confirm_logged_in
		#   	flash[:notice] = "Log in first"
		#   	redirect_to(:controller => 'access',:action => 'login')
		#   	return true

		#   end
end
