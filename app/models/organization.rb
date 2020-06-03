class Organization < ApplicationRecord

  has_many :user_on_organizations, dependent: :destroy
  has_many :users, through: :user_on_organizations
  has_many :events, dependent: :destroy
end
