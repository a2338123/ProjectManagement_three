class Cloudservice < ApplicationRecord
  validates :cloudserviceid, uniqueness: { case_sensitive: false }
end
