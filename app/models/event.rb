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
end
