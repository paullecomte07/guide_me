class AddCoordinatesToStops < ActiveRecord::Migration[5.2]
  def change
    add_column :stops, :latitude, :float
    add_column :stops, :longitude, :float
  end
end
