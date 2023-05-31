class RemoveEventAttendeeIdFromEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :event_attendings_id
  end
end
