class Event < ApplicationRecord

  belongs_to :admin, class_name: "User"
  has_many :attendances
  has_many :dancers, class_name: "User", through: :attendances

  has_one_attached :picture

  validates :start_date,
  presence: true

  validates :location_address,
  presence: true  

  validates :location_city,
  presence: true

  validates :location_zipcode,
  presence: true

  validates :location_country,
  presence: true

  validates :location_city,
  presence: true

  validates :title,
  presence: true,
  length: { minimum: 5, maximum: 140 }

  validates :description,
  presence: true,
  length: { minimum: 5, maximum: 1000 }

  validates :price,
  presence: true,
  numericality: { greater_than: 0 }


  validates :styles,
  presence: true

  validates :category,
  presence: true

  STYLES_EVENT = ["Hip Hop New Style", "Break", "Popping", "Locking", "House", "Voguing", "Waacking"]
  CATEGORIES_EVENT = ["Battle", "Cours / Workshop"]
  CLASS_LEVELS_EVENT = ["Débutant", "Intermédiaire", "Avancé"]
end

