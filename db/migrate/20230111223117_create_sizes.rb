class CreateSizes < ActiveRecord::Migration[7.0]
  def change
    create_table :sizes do |t|
      t.string :dimensions

      t.timestamps
    end
  end
end
