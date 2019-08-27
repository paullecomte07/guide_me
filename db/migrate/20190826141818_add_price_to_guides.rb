class AddPriceToGuides < ActiveRecord::Migration[5.2]
  def change
    add_monetize :guides, :price, currency: { present: false }
  end
end
