class Character < ApplicationRecord
  has_many :locations

  def find_locations(exhibit_id, size_id)
    self.locations.where(exhibit_id: exhibit_id, size_id: size_id)
  end
end
