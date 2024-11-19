class CreateCategoriesProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :categories_products, id: false do |t|
      t.references :category, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end

    # Add a composite primary key after the table creation
    add_index :categories_products, [:category_id, :product_id], unique: true
  end
end
