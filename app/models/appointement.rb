class Appointement < ApplicationRecord
  belongs_to :user
  belongs_to :doctor

  validates :date, presence: true, uniqueness: true
end
