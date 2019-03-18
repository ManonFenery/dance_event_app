module ApplicationHelper
	def current_user_is_admin
		current_user == @event.admin
	end
end
