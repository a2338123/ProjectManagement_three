class Customerserver < ApplicationRecord
  validates :customerserviceid, uniqueness: { case_sensitive: false }
end
