# == Schema Information
#
# Table name: customers
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  social_name            :string
#  cnpj                   :string
#  phone                  :string
#  username               :string
#  logo                   :string
#
# Indexes
#
#  index_customers_on_email                 (email) UNIQUE
#  index_customers_on_reset_password_token  (reset_password_token) UNIQUE
#

require 'rails_helper'

describe Customer do
  describe 'ralations' do
      it{should have_one :address}
      it{should have_many :customer_publication}
      it{should have_many :publications}
      it{should validate_presence_of :social_name}
      it{should validate_presence_of :cnpj}
      it{should validate_presence_of :phone}
      it{should validate_presence_of :username}
      it{should validate_uniqueness_of :username}
      it{should validate_presence_of :logo}
      it{should accept_nested_attributes_for :address}
  end
end

