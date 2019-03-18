class ApplicationController < ActionController::Base

before_action :configure_permitted_parameters, if: :devise_controller?
protect_from_forgery with: :exception

	protected

		def configure_permitted_parameters
				devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :nickname, :birthdate, {:styles => []}, :level, :name, :description, :contact_mail, :facebook, :twitter, :instagram, :youtube, :website])
    	end

end