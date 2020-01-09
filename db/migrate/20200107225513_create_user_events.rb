class CreateUserEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :user_events do |t|
      t.integer :event_id
      # t.integer :creator_id
      t.integer :attendee_id
      t.string :attendee_name

      t.timestamps
    end
  end
end
