module EventsHelper
	def is_user_an_attendee?
    @all_attendees = []
    @event.attendances.each do |attendee|
      @all_attendees << attendee.dancer.id
    end
    if user_signed_in?
      @all_attendees.include?(current_user.id)
    end
  end
end
