class AddEventAttendeeIdToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :event_attendings_id, :integer
    add_index :events, :event_attendings_id
  end
end
