class User < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :guests, dependent: :destroy
  has_many :members, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :messages#, dependent: :destroy se deben quedar
  has_many :replies, dependent: :destroy
  has_one :profile, dependent: :destroy
  has_one :inbox, dependent: :destroy
  has_one :organization, dependent: :destroy

  validates :mail, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/ #generic format
  validates :name, :mail, presence: true, uniqueness: true
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
