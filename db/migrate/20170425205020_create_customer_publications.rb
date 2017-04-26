class CreateCustomerPublications < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_publications do |t|
      t.references :customer, foreign_key: true
      t.references :publication, foreign_key: true

      t.timestamps
    end
  end
end
