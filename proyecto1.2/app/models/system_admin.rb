class SystemAdmin < ApplicationRecord
  belongs_to :user
  has_many :profiles
end
