class Book < ApplicationRecord
  belongs_to :user
  validates :isbn, presence: true, length: 13
end
