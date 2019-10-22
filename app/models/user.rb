class User < ActiveRecord::Base

  has_secure_password
  class authenticate_with_credentials
  end
  
end
