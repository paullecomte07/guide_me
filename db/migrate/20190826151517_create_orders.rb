class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :guide, foreign_key: true
      t.references :user, foreign_key: true
      t.string :state
      t.monetize :amount, currency: { present: false }
      t.jsonb :payment

      t.timestamps
    end
  end
end
