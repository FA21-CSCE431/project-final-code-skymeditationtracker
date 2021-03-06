# frozen_string_literal: true

class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.string :RSVP
      t.integer :user_id
      t.integer :event_id
      t.integer :location_id

      t.timestamps
    end
  end
end
