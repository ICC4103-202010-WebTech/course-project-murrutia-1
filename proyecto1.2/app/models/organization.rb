class Organization < ApplicationRecord
  belongs_to :admin_org
  has_many :events
  has_many :members

  validates :name, presence: true
end
