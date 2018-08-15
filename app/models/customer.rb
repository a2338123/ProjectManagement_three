class Customer < ApplicationRecord
  validates :customerid, uniqueness: { case_sensitive: false }
end
