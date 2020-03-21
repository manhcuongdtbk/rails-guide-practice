class User < ApplicationRecord
  has_many :articles, dependent: :destroy
  has_many :vehicles, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :books, inverse_of: "author", dependent: :destroy, foreign_key: "author_id"

  validates :name, presence: true, length: { minimum: 2 }
  validates :email, confirmation: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
  validates :email_confirmation, presence: true
  validates :age, numericality: { only_integer: true, greater_than: 0 }
end
