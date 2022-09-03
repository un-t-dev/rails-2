class CreateRoomRegistrations < ActiveRecord::Migration[6.0]
  def change
    create_table :room_registrations do |t|
      t.string :room_name
      t.string :introduction
      t.string :room_erea
      t.integer :room_price
      t.binary :image
      t.integer :user_id

      t.timestamps
    end
  end
end
