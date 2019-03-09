class ApplicationController < ActionController::Base

	before_action :devise_parameter_sanitizer, if: :devise_controller?
  protect_from_forgery with: :exception

	protected

		def configure_permitted_parameters
			if current_user
    		devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :birthdate, :style, :level])
    		devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :nickname, :birthdate, :style, :level])
    	else
    		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    		devise_parameter_sanitizer.permit(:saccount_update, keys: [:name, :description, :contact_mail, :social, :website])
    	end
  	end
end
