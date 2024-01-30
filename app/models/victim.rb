class Victim < ApplicationRecord
  belongs_to :user
  has_many :appointements, dependent: :destroy
end
