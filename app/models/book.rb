class Book < ApplicationRecord
  belongs_to :user
  validates :isbn, presence: true
end
