class Staff < ApplicationRecord
  belongs_to :branch
  belongs_to :staff_type
end
