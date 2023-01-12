class AddCharacterRefToLocations < ActiveRecord::Migration[7.0]
  def change
    add_reference :locations, :character, null: false, foreign_key: true
  end
end
