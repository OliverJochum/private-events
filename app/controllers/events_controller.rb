class EventsController < ApplicationController
  def index
    @events = Event.all
  end


  def show
    @event = Event.find(params[:id])
  end

  def create
    
    creator = User.find(params[:user_id])
    @event = creator.authored_events.build(event_params)

    if @event.save
      redirect_to @event
    else
      render :new, status: :unprocessable_entity
    end

  end

  def join
    @event = Event.find(params[:id])
    user = User.find(params[:user_id])
    @attendee = @event.attendees.build(user.attributes)

    if @attendee.save
      redirect_to "show"
    else
      render :new, status: :unprocessable_entity
    end
  end


  private
  def event_params
    params.require(:event).permit(:title,:location,:date)
  end
end
