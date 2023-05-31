class EventAttendingsController < ApplicationController
  def show
    event = Event.find(params[:event_id])
    @Attendees = event.attendees
  end

  def create
    event = Event.find(params[:event_id])
    user = User.find(params[:user_id])
    @attendee = event.attendees.build(user)

    if @attendee.save
      redirect_to "show"
    else
      render :new, status: :unprocessable_entity
    end
  end

end
