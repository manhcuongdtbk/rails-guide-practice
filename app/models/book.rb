class Book < ApplicationRecord
  has_and_belongs_to_many :categories
  has_many :comments, as: :commentable
  belongs_to :author, class_name: "User", foreign_key: "author_id"

  validates :name, presence: true
end
