class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :vin
      t.string :make
      t.string :model
      t.integer :year
      t.string :vehicle_type_name
      t.string :color
      t.integer :current_meter_value

      t.timestamps
    end
  end
end
