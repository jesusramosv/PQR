class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :reviews
    has_one :answer
    has_many :pqrs
    has_many :notifications
    has_many :audits
    belongs_to :departament
end
