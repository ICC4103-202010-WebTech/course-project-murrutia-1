class User < ApplicationRecord
  has_many :comments
  has_many :events
  has_many :guests
  has_many :members
  has_many :votes
  has_many :messages
  has_many :replies
  has_one :profile
  has_one :inbox
  has_one :organization

  validates :email, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/ #generic format
  validates :name, :email, presence: true, uniqueness: true
  after_create :create_inbox
  after_create :create_profile

  private
  def create_inbox
    Inbox.create!(user_id: self.id)
  end

  def create_profile
    Profile.create!(user_id: self.id)
  end

end
