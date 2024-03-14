class StaffType < ApplicationRecord
  has_many :staff
  has_many :branch, through: :staff_type
end
