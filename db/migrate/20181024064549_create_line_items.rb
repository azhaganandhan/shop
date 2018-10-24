class CreateLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :line_items do |t|
      t.string :name
      t.decimal :rate
      t.integer :quantity
      t.decimal :total
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end