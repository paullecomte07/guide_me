class AddImageColumnToGuides < ActiveRecord::Migration[5.2]
  def change
    add_column :guides, :image, :string
  end
end
