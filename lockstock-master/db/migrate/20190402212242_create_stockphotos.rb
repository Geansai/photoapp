class CreateStockphotos < ActiveRecord::Migration[5.0]
  def change
    create_table :stockphotos do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :image_url
      t.string :category
      t.string :photographer
      t.string :tags

      t.timestamps
    end
  end
end
