class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2 }
  validates :email, confirmation: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
  validates :email_confirmation, presence: true
  validates :age, numericality: { only_integer: true, greater_than: 0 }
end
