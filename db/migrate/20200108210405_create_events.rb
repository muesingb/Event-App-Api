class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :creator_id
      t.string :image
      t.string :name
      t.string :location
      t.bigint :start_time
      t.bigint :end_time
      t.text :description
      t.string :co_host
      t.string :password

      t.timestamps
    end
  end
end
