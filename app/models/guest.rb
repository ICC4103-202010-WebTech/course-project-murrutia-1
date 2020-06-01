class Guest < ApplicationRecord
  belongs_to :event
  belongs_to :user
  accepts_nested_attributes_for :user

end
