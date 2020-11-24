class Book < ApplicationRecord
  belongs_to :user
  validates :isbn, presence: true, length:{is: 13}
end
