class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :creator_id
      t.string :image
      t.string :name
      t.string :location
      t.integer :time
      t.string :co_host
      t.string :password

      t.timestamps
    end
  end
end
