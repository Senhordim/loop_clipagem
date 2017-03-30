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
#

class Vehicle < ApplicationRecord
  extend Enumerize

  has_many :publications

  enumerize :vehicle_type, in: [:video, :audio, :printed, :web]

  enumerize :publication_day, in: [
    :seg,
    :ter,
    :qua,
    :qui,
    :sex,
    :sab,
    :dom
  ]

end
