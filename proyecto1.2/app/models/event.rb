class Event < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :guests
  has_many :option_dates

end
