class Account < ActiveRecord::Base
  attr_accessible :date_of_birth, :email, :password, :pic_url, :user_name

  validates :email, :password, :pic_url, :user_name, :date_of_birth, presence: true
  validates :user_name, :password, uniqueness: true
  validates :pic_url, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)$}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
  }

end
