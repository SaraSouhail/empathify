class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :victim
  has_one :doctor
  has_many :messages, dependent: :destroy
  has_many :chatrooms, through: :messages

  after_create :create_victims
  def create_victims
    Victim.create(user: self)
  end
end
