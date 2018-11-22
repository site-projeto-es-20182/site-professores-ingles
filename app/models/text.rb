class Text < ApplicationRecord
  has_many :comments, as: :commentable
  validates :title, presence: true, length: {minimum: 8, maximum: 20}
  validates :author, presence: true
  validates :content, presence: true, length: {minimum: 20}

end
