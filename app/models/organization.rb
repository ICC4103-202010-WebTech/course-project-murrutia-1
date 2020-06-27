class Organization < ApplicationRecord
  has_one_attached :flyer
  has_many :user_on_organizations, dependent: :destroy
  has_many :users, through: :user_on_organizations
  has_many :events, dependent: :destroy

  def self.search(search)
    if search
      organizations = Organization.where("name LIKE ? OR description LIKE ?" , "%#{search}%", "%#{search}%")
    else
      organizations = Organization.all
    end
  end
end
