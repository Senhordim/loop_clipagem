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

require 'rails_helper'

describe Publication do
    describe 'relation' do
      it{should belong_to :vehicle}
      it{should have_many :customer_publication}
      it{should have_many :customers}
      it{should enumerize :status}
      it{should validate_presence_of :title}
      it{should validate_presence_of :description}
      it{should validate_presence_of :status}
      it{should validate_presence_of :date_of_publication}
    end
end
