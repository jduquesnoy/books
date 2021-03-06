class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :books
  validates :username, presence: true, length: { minimum: 3 }, uniqueness: true
  validates :first_name, uniqueness: { scope: :last_name }
end
