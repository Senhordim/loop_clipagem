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
#  sign_in_count          :integer          default("0"), not null
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

class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :logo, LogoUploader

  has_one :address, dependent: :destroy
  has_many :customer_publication
  has_many :publications, through: :customer_publication

  accepts_nested_attributes_for :address

  scope :by_social_name, -> (social_name) { where("social_name like ?", "%#{social_name}%") }
  scope :by_email, -> (email) { where("email like ?", "%#{email}%") }
  scope :by_cnpj, -> (cnpj) { where("cnpj like ?", "%#{cnpj}%") }

  validates_presence_of :social_name, :cnpj, :phone, :username, :logo
  validates_uniqueness_of :username

  def cnpj_formatado
    cnpj.gsub(/\A(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})\Z/, "\\1.\\2.\\3/\\4-\\5")
  end

end

