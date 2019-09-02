class ListOrderFromStops < ActiveRecord::Migration[5.2]
  def change
    remove_column :stops, :list_order
  end
end
