class Organization < ApplicationRecord
  belongs_to :admin_org
  has_many :events, dependent: :destroy
  has_many :members, dependent: :destroy

  validates :name, presence: true
end
