class AddPublicationToVehicle < ActiveRecord::Migration[5.0]
  def change
    add_column :vehicles, :publication, :integer
  end
end
