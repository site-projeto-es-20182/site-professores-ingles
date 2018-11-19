class Text < ApplicationRecord
  validates :title, presence: true, length: {minimum: 8, maximum: 20}
  validates :author, presence: true

end
