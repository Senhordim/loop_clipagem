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

require 'rails_helper'

RSpec.describe CustomerPublication, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
