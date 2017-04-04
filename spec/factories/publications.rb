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

FactoryGirl.define do
  factory :publication do
    title "MyString"
    description "MyText"
    archive "MyString"
    status "MyString"
    page 1
    link "MyString"
    vehicle nil
  end
end
