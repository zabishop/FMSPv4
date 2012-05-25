class Account < ActiveRecord::Base
  attr_accessible :date_of_birth, :email, :password, :pic_url, :user_name
end
