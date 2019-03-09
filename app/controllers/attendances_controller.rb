class AttendancesController < ApplicationController
	def new
		@attendance = Attendance.new
	end

	def create
		@attendance = Attendance.create
		@attendance.dancer = current_user
		@attendance.event_id = params[:event_id]

		if @attendance.save
			redirect_to event_path(@attendance.event)
		else
			flash[:error] = "Ta participation n'a pas été prise en compte. Réessaye de t'inscrire"
			render 'new'
		end
	end

	def index
		@attendances = Attendance.all
	end

	def show
		@event = Event.find(params[:id])
	end
end
