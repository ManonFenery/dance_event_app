class Attendance < ApplicationRecord

	belongs_to :dancer, class_name: "User"
  belongs_to :event

end
