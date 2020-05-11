class SystemAdmin < ApplicationRecord
  belongs_to :user
  has_many :profiles
  accepts_nested_attributes_for :user
end
