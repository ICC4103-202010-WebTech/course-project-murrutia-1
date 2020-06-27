class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]
  validates :username, presence: false, uniqueness: true
  validates :email, presence: true, uniqueness: true, email: true
  has_one_attached :flyer, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :comment_replies, dependent: :destroy
  has_many :date_votes, dependent: :destroy
  has_one :system_administrator, dependent: :destroy
  has_many :user_on_organizations, dependent: :destroy
  has_many :user_on_events, dependent: :destroy
  has_many :organizations, through: :user_on_organizations, dependent: :destroy
  has_many :events, dependent: :destroy, through: :user_on_events
  has_many :mail_box

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    # Uncomment the section below if you want users to be created if they don't exist
    unless user
      user = User.create(full_name: data['name'],
                         email: data['email'],
                         password: Devise.friendly_token[0, 20]
      )
    end
    user
  end

  def self.search(search)
    if search
      user_search = User.where("username LIKE ? OR full_name LIKE ? OR email LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      user_search = User.all
    end
  end
end