class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :option_date
end
