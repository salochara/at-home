class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events
  has_many :reservations
  has_many :attending_events, through: :reservations, source: :event

  mount_uploader :photo, PhotoUploader


end
