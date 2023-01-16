class AddHighScoreToExhibits < ActiveRecord::Migration[7.0]
  def change
    add_column :exhibits, :high_score, :string
  end
end
