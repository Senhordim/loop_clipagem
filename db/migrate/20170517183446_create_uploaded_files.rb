class CreateUploadedFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :uploaded_files do |t|
      t.string :title
      t.text :description
      t.string :archive

      t.timestamps
    end
  end
end
