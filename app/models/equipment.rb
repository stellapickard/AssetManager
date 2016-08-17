class Equipment < ApplicationRecord
  validates :status, presence: true
  validates :employee, presence: true
  validates :equipment_type, presence: true
  validates :serial_no, presence: true

  has_many :assigned_to
end