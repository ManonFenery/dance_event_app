class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events, foreign_key: 'admin_id', class_name: "Event"
  has_many :attendances, foreign_key: 'dancer_id', class_name: "Attendance"

  LEVELS_DANCER = ["Débutant (1-2 ans)", "Intermédiaire (2-5 ans)", "Avancé (plus de 5 ans)"]
  STYLES_DANCER = ["Hip Hop New Style", "Break", "Popping", "Locking", "House", "Voguing", "Waacking"]
end
