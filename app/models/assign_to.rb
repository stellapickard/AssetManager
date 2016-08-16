class AssignTo < ApplicationRecord
	validate :name, presence: true
	validate :department, presence: true

	belongs_to  :equipment
end
