# == Schema Information
#
# Table name: publications
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  archive     :string
#  status      :string
#  page        :integer
#  link        :string
#  vehicle_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_publications_on_vehicle_id  (vehicle_id)
#

class Publication < ApplicationRecord
  belongs_to :vehicle
end
