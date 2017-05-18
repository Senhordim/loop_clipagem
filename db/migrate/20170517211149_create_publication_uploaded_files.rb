class CreatePublicationUploadedFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :publication_uploaded_files do |t|
      t.references :publication, foreign_key: true
      t.references :uploaded_file, foreign_key: true

      t.timestamps
    end
  end
end
