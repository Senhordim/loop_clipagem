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

require 'rails_helper'

RSpec.describe UploadedFile, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
