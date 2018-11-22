class Event < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  mount_uploader :photo, PhotoUploader

  include PgSearch
    pg_search_scope :search_by_location,
      against: [:location],
      using: {
        tsearch: { prefix: true } # <-- now `superman batm` will return something!
      }

end
