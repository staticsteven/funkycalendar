class CalendarController < ApplicationController

	def index
		@events = Event.all
		@date = params[:month] ? Date.parse(params[:month].gsub('-', '/')) : Time.now.to_date
		@eventDate = params[:day] ? Date.parse(params[:day].gsub('-', '/')) : Time.now.to_date
		@eventsToday = Event.where(:eventdate => Time.now.to_date)
		respond_to	do |format|
			format.html
			format.js
		end
	end

#	def update_today
#		render :partial => 'layouts/today'
#	end

#	def update_calendar
#		render :partial => 'layouts/calendar'
#	end

	def faq
	end

end
