class User < ApplicationRecord
    has_secure_password

 validates :name, presence: true, length: { minimum: 4 }
  validates :email, presence: true, uniqueness: { case_sensitive: false}
  validates :password, presence: true, length: { minimum: 4 }
  validates :password_confirmation, presence: true, length: { minimum: 4}

  def self.authenticate_with_credentials(email,password)
    email_text = email.downcase
    @user = User.find_by_email(email_text)
    if @user && @user.authenticate(password)
        @user
    else
        nil
  end
end
end
