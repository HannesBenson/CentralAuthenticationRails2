class CentralAuthenticationRails2::Migration < ActiveRecord::Migration
  def self.connection 
    CentralAuthenticationRails2::Connection.connection 
  end 
end
