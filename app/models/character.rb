class Character < ApplicationRecord
  has_many :locations

  # def get_locations(exhibit, character, size)
  #   Location.where("exhibit_id = ? AND character_id = ? AND size_id = ?", exhibit, character, size)
  # end

  def get_locations(exhibit, size)
    Location.where("exhibit_id = ? AND character_id = ? AND size_id = ?", exhibit, self.id, size)
  end
end
