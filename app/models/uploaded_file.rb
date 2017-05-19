# == Schema Information
#
# Table name: uploaded_files
#
#  id             :integer          not null, primary key
#  title          :string
#  description    :text
#  archive        :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  publication_id :integer
#

class UploadedFile < ApplicationRecord
  mount_uploader :archive, ArchiveUploader
  belongs_to :publication, optional: true
end
