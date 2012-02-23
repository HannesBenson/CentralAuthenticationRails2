class CentralAuthenticationRails2::User < CentralAuthenticationRails2::Connection
  acts_as_authentic do |config|
    config.merge_validates_length_of_password_field_options({:minimum => 9})
    config.merge_validates_length_of_password_confirmation_field_options({:minimum => 9})
    config.login_field = :email
  end

  def self.valid?(email, password)
    return false if !(cu = CentralAuthenticationRails2::User.find_by_email(email))
    cu.valid_password?(password)
  end
end
