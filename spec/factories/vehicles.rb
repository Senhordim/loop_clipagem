# == Schema Information
#
# Table name: vehicles
#
#  id              :integer          not null, primary key
#  name            :string
#  vehicle_type    :string
#  national        :boolean          default("true")
#  country         :string
#  state           :string
#  url             :string
#  address         :string
#  publication_day :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  publication     :integer
#

FactoryGirl.define do
  factory :vehicle do
    name "MyString"
    type ""
    national false
    country "MyString"
    state "MyString"
    url "MyString"
    address "MyString"
    publication_day "MyString"
  end
end
