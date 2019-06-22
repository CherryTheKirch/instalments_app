class User < ApplicationRecord
  has_secure_password
  has_many :instalments, dependent: :destroy

  # Validations
  validates :email, presence: true
  validates_length_of :password, minimum: 6
end
