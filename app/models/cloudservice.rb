class Cloudservice < ApplicationRecord
# has_many :projects, dependent: :destroy
  validates :code, uniqueness: { case_sensitive: false }
end
