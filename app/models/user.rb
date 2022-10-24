class User < ApplicationRecord
    has_secure_password

 validates :name, presence: true, length: { minimum: 4 }
  validates :email, presence: true, uniqueness: { case_sensitive: false}
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true, length: { minimum: 6}
end
