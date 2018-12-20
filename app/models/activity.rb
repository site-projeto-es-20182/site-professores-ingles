class Activity < ApplicationRecord
  belongs_to :user
  belongs_to :activable, polymorphic: true
  validates :title, presence: true, uniqueness: true, length: {minimum: 8, maximum: 20}
  validates :content, presence: true, length: {minimum: 20}
end
