class Review < ApplicationRecord
  belongs_to :pqr
  belongs_to :state
  belongs_to :user
end
