# == Schema Information
#
# Table name: customer_publications
#
#  id             :integer          not null, primary key
#  customer_id    :integer
#  publication_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_customer_publications_on_customer_id     (customer_id)
#  index_customer_publications_on_publication_id  (publication_id)
#

FactoryGirl.define do
  factory :customer_publication do
    customer nil
    publication nil
  end
end
