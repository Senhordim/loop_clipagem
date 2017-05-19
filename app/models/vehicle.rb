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
#  price           :decimal(8, 2)
#

class Vehicle < ApplicationRecord
  extend Enumerize

  paginates_per 7

  has_many :publications

  scope :by_name, -> (name) { where("lower(name) like ?", "%#{name}%".downcase)}
  scope :by_type, -> (vehicle_type) { where("vehicle_type like ?", "%#{vehicle_type}%") }

  validates_presence_of :name, :vehicle_type, :country, :state

  enumerize :vehicle_type, in: [ :tv, :radio, :printed, :online, :magazine]

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
