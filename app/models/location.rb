class Location < ApplicationRecord
  belongs_to :character
  belongs_to :exhibit
  belongs_to :size
end
