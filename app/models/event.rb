class Event < ApplicationRecord
  belongs_to :admin
  has_many :attendances
  has_many :dancers through: :attendances

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
  presence: true
  length: { greater_than: 0 }

  validates :location,
  presence: true

  validates :type,
  presence: true

  validates :category,
  presence: true
end
