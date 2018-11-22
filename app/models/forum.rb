class Forum < ApplicationRecord
  has_many :comments, as: :commentable
  validates_with TagValidator
  validates :tag, presence: true
  validates :title, presence: true, length: {minimum: 8, maximum: 20}
  validates :author, presence: true
  validates :content, presence: true, length: {minimum: 20}
end
