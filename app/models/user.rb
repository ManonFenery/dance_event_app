class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :nickname, length: {minimum: 3, maximum: 150}
  validates :birthdate, presence: true
  validates :style, presence: true
  validates :level, presence: true

end
