class AddSocialNameAndCnpjAndPhoneUsernameToCustomer < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :social_name, :string
    add_column :customers, :cnpj, :string
    add_column :customers, :phone, :string
    add_column :customers, :username, :string
  end
end
