class User < ApplicationRecord
  has_many :comments
  has_many :events
  has_many :guests
  has_many :members
  has_many :votes
  has_one :organization

  validates :email, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/ #generic format
  validates :name, :email, presence: true, uniqueness: true

end
