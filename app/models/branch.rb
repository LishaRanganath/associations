class Branch < ApplicationRecord
  has_many :staff
  has_many :staff_type, through: :staff
end
