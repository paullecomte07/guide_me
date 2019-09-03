class AddListOrderToStops < ActiveRecord::Migration[5.2]
  def change
    add_column :itineraries, :list_order, :integer
  end
end
