class Project < ApplicationRecord
# belongs_to :cloudservice
  validates :projectid, uniqueness: { case_sensitive: false }
end
