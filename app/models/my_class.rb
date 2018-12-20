class MyClass < ApplicationRecord
  belongs_to :user
  has_many :activities, as: :activable
  validates :title, presence: true, uniqueness: true

end
