class Customer < ApplicationRecord
  validates :code, uniqueness: { case_sensitive: false }
end
