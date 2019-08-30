class AddContentToStops < ActiveRecord::Migration[5.2]
  def change
    add_column :stops, :content, :text
  end
end
