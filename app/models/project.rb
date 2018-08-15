class Project < ApplicationRecord
  validates :projectid, uniqueness: { case_sensitive: false }
end
