class AddPublicationIdToUploadedFile < ActiveRecord::Migration[5.0]
  def change
    add_column :uploaded_files, :publication_id, :integer
  end
end
