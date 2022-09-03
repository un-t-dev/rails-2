class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :person
      t.integer :user_id
      t.integer :room_registration_id

      t.timestamps
    end
  end
end
