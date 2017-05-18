class AddDateOfPublicationToPublications < ActiveRecord::Migration[5.0]
  def change
    add_column :publications, :date_of_publication, :date
  end
end
