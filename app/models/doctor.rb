class Doctor < ApplicationRecord
  has_many :appointements, dependent: :destroy
  has_many :users, through: :appointements
end
