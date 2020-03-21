class Article < ApplicationRecord
  has_many :comments, as: :commentable

  belongs_to :user

  validates :title, presence: true, length: { minimum: 5 }
  validates :content, presence: true
end
