class Project < ApplicationRecord
# belongs_to :cloudservice
  validates :code, uniqueness: { case_sensitive: false }
end
