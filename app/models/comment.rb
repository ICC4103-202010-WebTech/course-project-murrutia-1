class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :comment_replies, dependent: :destroy
end
