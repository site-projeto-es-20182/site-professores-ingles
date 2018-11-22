class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  validates :author, presence: true
  validates :content, presence: true
end
