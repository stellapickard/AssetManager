class Employee < ApplicationRecord
	validate :employee_name, presence: true
	validate :department, presence: true

	belongs_to  :equipment
end
