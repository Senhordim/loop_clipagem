# == Schema Information
#
# Table name: addresses
#
#  id           :integer          not null, primary key
#  street       :string
#  neighborhood :string
#  zip_code     :string
#  numb         :string
#  complement   :string
#  city         :string
#  state        :string
#  country      :string
#  latitude     :float
#  longitude    :float
#  customer_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_addresses_on_customer_id  (customer_id)
#

FactoryGirl.define do
  factory :address do
    street "MyString"
    neighborhood "MyString"
    zip_code "MyString"
    numb "MyString"
    complement "MyString"
    city "MyString"
    state "MyString"
    country "MyString"
    latitude 1.5
    longitude 1.5
    customer nil
  end
end
