class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :title
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end
