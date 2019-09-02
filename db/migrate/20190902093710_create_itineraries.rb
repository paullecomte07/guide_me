class CreateItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries do |t|
      t.references :guide, foreign_key: true
      t.references :stop, foreign_key: true

      t.timestamps
    end
  end
end
