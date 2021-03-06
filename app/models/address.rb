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

class Address < ApplicationRecord
  belongs_to :customer

  geocoded_by :full_address

  after_validation :geocode,
    if: -> (obj){ obj.street_changed? || obj.numb_changed? || obj.neighborhood_changed? || obj.city_changed? || obj.state_changed? }

  def full_address
    [street, numb, city, state, country].compact.join(', ')
  end

  validates_presence_of :street, :neighborhood, :zip_code, :numb, :city, :state

end
