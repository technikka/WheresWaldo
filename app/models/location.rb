class Location < ApplicationRecord
  belongs_to :character
  belongs_to :exhibit
  belongs_to :size

  def self.validate(character_id, exhibit_id, size_id, div_id)
    return true if Location.find_by("character_id = ? AND exhibit_id = ? AND size_id = ? AND div = ?", character_id, exhibit_id, size_id, div_id)

    return false
  end
end
