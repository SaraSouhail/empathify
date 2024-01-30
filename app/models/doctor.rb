class Doctor < ApplicationRecord
  has_many :appointements, dependent: :destroy
end
