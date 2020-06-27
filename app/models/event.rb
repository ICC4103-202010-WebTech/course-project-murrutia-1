class Event < ApplicationRecord

  belongs_to :organization
  belongs_to :user
  has_one_attached :flyer
  has_many_attached :files
  has_many :user_on_events, dependent: :destroy
  has_many :users, through: :user_on_events
  has_many :date_votes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :comment_replies, through: :comments

  def self.search(search)
    if search
      events = Event.joins(:user, :organization).where("events.location LIKE ? OR events.name LIKE ? OR events.description LIKE ? OR users.username LIKE ? OR users.full_name LIKE ? OR organizations.name LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      events = Event.all
    end
  end
end
