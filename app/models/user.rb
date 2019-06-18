class User < ApplicationRecord
  has_secure_password

  # Validations
  validates :email, presence: true
  validates_length_of :password_digest, minimum: 6
end
