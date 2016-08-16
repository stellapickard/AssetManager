class Equipment < ApplicationRecord
	validates :status, presence: true
	validates :assigned_to, presence: true
	validates :type, presence: true
	validates :serial_no, presence: true

	has_many :assigned_to
end
