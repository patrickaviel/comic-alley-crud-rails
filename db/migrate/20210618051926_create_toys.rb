class CreateToys < ActiveRecord::Migration[6.1]
  def change
    create_table :toys do |t|
      t.string :brand
      t.string :toy_name
      t.decimal :price
      t.integer :quantity
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
