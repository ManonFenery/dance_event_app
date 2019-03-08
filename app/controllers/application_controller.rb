class ApplicationController < ActionController::Base

	before_action :devise_parameter_sanitizer, if: :devise_controller?
  protect_from_forgery with: :exception


	protected

		def configure_permitted_parameters
			if current_user.admin?
				devise_parameter_sanitizer.permit(:account_update, keys: [:name, :description, :contact_mail, :social, :website])
			else
    		devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :nickname, :birthdate, :style, :level])
    	end
  	end
end
