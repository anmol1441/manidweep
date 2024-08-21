class CreateSubCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :sub_categories do |t|
      t.bigint :user_id
      t.bigint :super_category_id
      t.string :name_en
      t.string :name_hi
      t.text :details_en
      t.text :details_hi
      t.string :slug
      t.text :page_content_en
      t.text :page_content_hi
      t.integer :order

      t.timestamps
    end
  end
end
