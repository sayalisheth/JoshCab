class CreateCabs < ActiveRecord::Migration[5.2]
  def change
    create_table :cabs do |t|
      t.string :no_of_seats
      t.string :number
      t.timestamps
    end
  end
end
