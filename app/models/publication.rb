# == Schema Information
#
# Table name: publications
#
#  id                  :integer          not null, primary key
#  title               :string
#  description         :text
#  archive             :string
#  status              :string
#  page                :integer
#  link                :string
#  vehicle_id          :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  date_of_publication :date
#
# Indexes
#
#  index_publications_on_vehicle_id  (vehicle_id)
#

class Publication < ApplicationRecord

  mount_uploader :archive, ArchiveUploader

  extend Enumerize

  paginates_per 7

  belongs_to :vehicle

  enumerize :status, in: [ :public, :draft, :inactive]

  def to_param
    [id, title.parameterize].join("-")
  end

end
