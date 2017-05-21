# == Schema Information
#
# Table name: vehicles
#
#  id              :integer          not null, primary key
#  name            :string
#  vehicle_type    :string
#  national        :boolean          default(TRUE)
#  country         :string
#  state           :string
#  url             :string
#  address         :string
#  publication_day :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  publication     :integer
#  price           :decimal(8, 2)
#

require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  it { should validate_presence_of(:name ) }
  it { should validate_presence_of(:vehicle_type ) }
  it { should validate_presence_of(:country ) }
  it { should validate_presence_of(:state ) }
  it { should validate_presence_of(:publication_day ) }

  it { is_expected.to have_any(:publications)}
end
