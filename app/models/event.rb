class Event < ApplicationRecord

  belongs_to :admin, class_name: "User"
  has_many :attendances
  has_many :dancers, class_name: "User", through: :attendances

  validates :start_date,
  presence: true

  validates :duration,
  presence: true,
  numericality: { greater_than: 0 }

  validates :title,
  presence: true,
  length: { minimum: 5, maximum: 140 }

  validates :description,
  presence: true,
  length: { minimum: 5, maximum: 1000 }

  validates :price,
  presence: true,
  numericality: { greater_than: 0 }

  validates :location,
  presence: true

  validates :styles,
  presence: true

  validates :category,
  presence: true
end
