class UpdateUser < ActiveRecord::Migration[7.0]
  def change
    change_table :events do |t|
      t.string :title
      t.string :location
      t.date :date
    end

  end
end
