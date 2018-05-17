class Pqr < ApplicationRecord
  belongs_to :user
  belongs_to :state
  has_many :reviews
  has_one :answer
  has_many :docs
  has_many :audits
  has_many :notifications

end
