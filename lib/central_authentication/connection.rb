class CentralAuthentication::Connection < ActiveRecord::Base 
  establish_connection "cauth_#{Rails.env}"
  self.abstract_class = true

  def self.table_name_prefix
    "cauth_#{Rails.env}."
  end
end
