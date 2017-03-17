class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :vehicle_type
      t.boolean :national, default: true
      t.string :country
      t.string :state
      t.string :url
      t.string :address
      t.string :publication_day

      t.timestamps
    end
  end
end
