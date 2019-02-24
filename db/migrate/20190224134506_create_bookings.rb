class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :date
      t.integer :duration
      t.string :user
      t.references :table, foreign_key: true

      t.timestamps
    end
  end
end
