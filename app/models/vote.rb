class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :option_date
  accepts_nested_attributes_for :option_date
end
