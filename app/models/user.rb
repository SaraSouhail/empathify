class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :messages, dependent: :destroy
  has_many :chatrooms, through: :messages
  has_many :appointements, dependent: :destroy
  has_many :doctors, through: :appointements
  has_one_attached :photo
  #Search
  include PgSearch::Model
  pg_search_scope :search_by_first_name_and_last_name_and_username,
  against: [ :first_name, :last_name, :username],
  using: {
    tsearch: { prefix: true }
  }

end
