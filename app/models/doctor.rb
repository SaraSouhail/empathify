class Doctor < ApplicationRecord
  has_many :appointements, dependent: :destroy
  belongs_to :user
end
