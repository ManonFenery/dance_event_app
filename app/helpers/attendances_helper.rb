module AttendancesHelper
	def event_is_a_battle
		@event.category == "battle" || @event.category == "Battle"
	end
end
