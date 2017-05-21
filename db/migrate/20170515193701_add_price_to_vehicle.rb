class AddPriceToVehicle < ActiveRecord::Migration[5.0]
  def change
    add_column :vehicles, :price, :decimal, precision: 8, scale: 2
  end
end
