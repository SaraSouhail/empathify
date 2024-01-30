class Appointement < ApplicationRecord
  belongs_to :victim
  belongs_to :doctor
end
