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

  paginates_per 7

  has_many :publications

  validates_presence_of :name, :vehicle_type, :country, :state, :publication_day

  enumerize :vehicle_type, in: [ :tv, :radio, :printed, :online, :revista]

  def self.all_days_of_week
    [
      "Segunda",
      "Terça",
      "Quarta",
      "Quinta",
      "Sexta",
      "Sabádo",
      "Domingo"
    ]
  end


end
