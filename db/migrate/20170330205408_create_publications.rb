class CreatePublications < ActiveRecord::Migration[5.0]
  def change
    create_table :publications do |t|
      t.string :title
      t.text :description
      t.string :archive
      t.string :status
      t.integer :page
      t.string :link
      t.references :vehicle, foreign_key: true

      t.timestamps
    end
  end
end
