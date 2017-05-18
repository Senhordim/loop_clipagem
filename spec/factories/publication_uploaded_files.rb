# == Schema Information
#
# Table name: publication_uploaded_files
#
#  id               :integer          not null, primary key
#  publication_id   :integer
#  uploaded_file_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_publication_uploaded_files_on_publication_id    (publication_id)
#  index_publication_uploaded_files_on_uploaded_file_id  (uploaded_file_id)
#

FactoryGirl.define do
  factory :publication_uploaded_file do
    publications ""
    uploaded_file nil
  end
end
