class AttendancesController < ApplicationController

	before_action :authenticate_user!, only: [:new, :create]

	def new
		@attendance = Attendance.new
		@event = Event.find(params[:event_id])
		#To print all styles possible for the battle (select_tag)
		@style_options = @event.styles.each{ |e| print e, "--" }
	end

	def create
		@attendance = Attendance.create(dancer_id: current_user.id, event_id: params[:event_id])

		if @attendance.save
			redirect_to event_path(@attendance.event)
		else
			render 'new'
		end
	end

	def index
		@attendances = Attendance.where("event_id = #{params[:event_id]}")
		@event = Event.find(params[:event_id])
	end

	def show
		@event = Event.find(params[:id])
	end
end