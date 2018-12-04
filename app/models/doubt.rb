class Doubt < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable
  validates :title, presence: true, uniqueness: true, length: {minimum: 8, maximum: 20}
  validates :content, presence: true, length: {minimum: 20}
end
