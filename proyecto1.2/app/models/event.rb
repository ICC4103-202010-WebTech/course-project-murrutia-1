class Event < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :guests, dependent: :destroy
  has_many :option_dates, dependent: :destroy

end
