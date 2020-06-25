

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true#, email: true

  has_one_attached :flyer
  has_many :comments, dependent: :destroy
  has_many :comment_replies, dependent: :destroy
  has_many :date_votes, dependent: :destroy
  has_one :system_administrator, dependent: :destroy
  has_many :user_on_organizations
  has_many :user_on_events, dependent: :destroy
  has_many :organizations, through: :user_on_organizations
  has_many :events, through: :user_on_events

  acts_as_messageable

  def mailboxer_name
    self.name
  end

  def mailboxer_email(object)
    self.email
  end
end