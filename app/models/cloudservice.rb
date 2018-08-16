class Cloudservice < ApplicationRecord
# has_many :projects, dependent: :destroy
  validates :cloudserviceid, uniqueness: { case_sensitive: false }
end
