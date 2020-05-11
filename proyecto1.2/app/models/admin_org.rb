class AdminOrg < ApplicationRecord
  belongs_to :user
  has_one :organization
  accepts_nested_attributes_for :user
end
